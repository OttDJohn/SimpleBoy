const std = @import("std");
const c = @import("cpu.zig").CPU;
const inst = @import("instructions.zig");

pub const MMU = struct {
    const Self = @This();

    // dmg_boot made easy
    gbbootrom: [256]u8 = [_]u8{ 0x31, 0xFE, 0xFF, 0xAF, 0x21, 0xFF, 0x9F, 0x32, 0xCB, 0x7C, 0x20, 0xFB, 0x21, 0x26, 0xFF, 0x0E, 0x11, 0x3E, 0x80, 0x32, 0xE2, 0x0C, 0x3E, 0xF3, 0xE2, 0x32, 0x3E, 0x77, 0x77, 0x3E, 0xFC, 0xE0, 0x47, 0x11, 0x04, 0x01, 0x21, 0x10, 0x80, 0x1A, 0xCD, 0x95, 0x00, 0xCD, 0x96, 0x00, 0x13, 0x7B, 0xFE, 0x34, 0x20, 0xF3, 0x11, 0xD8, 0x00, 0x06, 0x08, 0x1A, 0x13, 0x22, 0x23, 0x05, 0x20, 0xF9, 0x3E, 0x19, 0xEA, 0x10, 0x99, 0x21, 0x2F, 0x99, 0x0E, 0x0C, 0x3D, 0x28, 0x08, 0x32, 0x0D, 0x20, 0xF9, 0x2E, 0x0F, 0x18, 0xF3, 0x67, 0x3E, 0x64, 0x57, 0xE0, 0x42, 0x3E, 0x91, 0xE0, 0x40, 0x04, 0x1E, 0x02, 0x0E, 0x0C, 0xF0, 0x44, 0xFE, 0x90, 0x20, 0xFA, 0x0D, 0x20, 0xF7, 0x1D, 0x20, 0xF2, 0x0E, 0x13, 0x24, 0x7C, 0x1E, 0x83, 0xFE, 0x62, 0x28, 0x06, 0x1E, 0xC1, 0xFE, 0x64, 0x20, 0x06, 0x7B, 0xE2, 0x0C, 0x3E, 0x87, 0xF2, 0xF0, 0x42, 0x90, 0xE0, 0x42, 0x15, 0x20, 0xD2, 0x05, 0x20, 0x4F, 0x16, 0x20, 0x18, 0xCB, 0x4F, 0x06, 0x04, 0xC5, 0xCB, 0x11, 0x17, 0xC1, 0xCB, 0x11, 0x17, 0x05, 0x20, 0xF5, 0x22, 0x23, 0x22, 0x23, 0xC9, 0xCE, 0xED, 0x66, 0x66, 0xCC, 0x0D, 0x00, 0x0B, 0x03, 0x73, 0x00, 0x83, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x08, 0x11, 0x1F, 0x88, 0x89, 0x00, 0x0E, 0xDC, 0xCC, 0x6E, 0xE6, 0xDD, 0xDD, 0xD9, 0x99, 0xBB, 0xBB, 0x67, 0x63, 0x6E, 0x0E, 0xEC, 0xCC, 0xDD, 0xDC, 0x99, 0x9F, 0xBB, 0xB9, 0x33, 0x3E, 0x3c, 0x42, 0xB9, 0xA5, 0xB9, 0xA5, 0x42, 0x4C, 0x21, 0x04, 0x01, 0x11, 0xA8, 0x00, 0x1A, 0x13, 0xBE, 0x20, 0xFE, 0x23, 0x7D, 0xFE, 0x34, 0x20, 0xF5, 0x06, 0x19, 0x78, 0x86, 0x23, 0x05, 0x20, 0xFB, 0x86, 0x20, 0xFE, 0x3E, 0x01, 0xE0, 0x50 },
    rom: [0xfa000]u8 = undefined,
    memory: [0xfa000]u8 = undefined,
    romtype: u8 = 0x00,
    ram: [8][]u8 = undefined,
    eram: []u8 = undefined,
    wram: []u8 = undefined,
    zram: []u8 = undefined,
    mbc1RomNum: u8 = 1,
    mbc1RamNum: u8 = 0,
    mbc1RomMode: u8 = 0,
    mbc1RamEnabled: bool = false,
    mbc2RomNum: u8 = 1,
    mbc2RamNum: u8 = 0,
    mbc2RomMode: u8 = 0,
    mbc2RamEnabled: bool = false,
    mbc3RomNum: u8 = 1,
    mbc3RamNum: u8 = 0,
    mbc3RomMode: u8 = 0,
    mbc3RamEnabled: bool = false,

    pub fn initMMU(self: *Self) void {
        self.loadBootRom();
    }

    pub fn loadBootRom(self: *Self) void {
        @memcpy(self.memory[0..256], &self.gbbootrom);
    }

    pub fn initRom(self: *Self) !void {
        self.romtype = readFromMem(self, 0x147);
        if (self.romtype < 0x04 and self.romtype != 0x00) self.romtype = 0x01;
        if (self.romtype >= 0x0f and self.romtype <= 0x13) self.romtype = 0x03;
        if (self.romtype == 0x05 or self.romtype == 0x06) self.romtype = 0x02;

        const allocator = std.heap.page_allocator;
        std.debug.print("memory at 149: {}\n", .{self.memory[0x149]});
        switch (self.memory[0x149]) {
            0x01 => {
                self.ram[0] = try allocator.alloc(u8, 0x800);
                std.debug.print("0x01\n", .{});
            },
            0x02 => {
                self.ram[0] = try allocator.alloc(u8, 0x2000);
                std.debug.print("0x02\n", .{});
            },
            0x03 => {
                self.ram[0] = try allocator.alloc(u8, 0x8000);
                self.ram[1] = try allocator.alloc(u8, 0x8000);
                self.ram[2] = try allocator.alloc(u8, 0x8000);
                self.ram[3] = try allocator.alloc(u8, 0x8000);
                std.debug.print("0x03\n", .{});
            },
            0x04, 0x05 => {
                self.ram[0] = try allocator.alloc(u8, 0x8000);
                self.ram[1] = try allocator.alloc(u8, 0x8000);
                self.ram[2] = try allocator.alloc(u8, 0x8000);
                self.ram[3] = try allocator.alloc(u8, 0x8000);
                self.ram[4] = try allocator.alloc(u8, 0x8000);
                self.ram[5] = try allocator.alloc(u8, 0x8000);
                self.ram[6] = try allocator.alloc(u8, 0x8000);
                self.ram[7] = try allocator.alloc(u8, 0x8000);
                std.debug.print("0x04 or 5\n", .{});
            },
            else => {},
        }
    }

    pub fn readFromMem(self: *Self, adr: u16) u8 {
        if (self.romtype == 0x01 and self.romtype == self.mbc1RomNum and (adr >= 0x4000 and adr < 0x8000)) {
            const target: u32 = (@as(u32, self.mbc1RomNum) * 0x4000) + (adr - 0x4000);
            std.debug.print("first\n", .{});
            return self.rom[target];
        } else if (self.romtype == 0x02) {
            if (self.mbc2RomNum != 0 and (adr >= 0x4000 and adr < 0x8000)) {
                const target: u32 = (@as(u32, self.mbc2RomNum) * 0x4000) + (adr - 0x4000);
                std.debug.print("second\n", .{});
                return self.rom[target];
            } else return self.memory[adr];
        } else if (self.romtype == 0x03) {
            if (self.mbc3RomNum != 0 and (adr >= 0x4000 and adr < 0x8000)) {
                const target: u32 = (@as(u32, self.mbc3RomNum) * 0x4000) + (adr - 0x4000);

                return self.rom[target];
            } else if (self.mbc3RamEnabled and self.mbc3RomNum < 0x08 and (adr >= 0xa00 and adr < 0xc000)) {
                return self.ram[self.mbc3RamNum][adr];
            } else {
                return self.memory[adr];
            }
        }
        return self.memory[adr];
    }

    pub fn writeToMem(self: *Self, adr: u16, value: u8) void {
        if (self.romtype == 0x00) {
            if (adr >= 0x8000) {
                self.memory[adr] = value;
            }

            // mbc1
        } else if (self.romtype == 0x01) {
            if (adr < 0x2000) {
                self.mbc1RamEnabled = (value > 0);
            } else if (adr < 0x4000) {
                self.mbc1RomNum = value & 0x1f;
                if (value == 0x00 or value == 0x20 or value == 0x40 or value == 0x60) {
                    self.mbc1RomNum = (value & 0x1f) + 1;
                }
            } else if (adr < 0x6000) {
                if (self.mbc1RomMode == 0) {
                    self.mbc1RomNum |= (value & 3) << 5;
                } else {
                    self.mbc1RamNum = value & 3;
                }
            } else if (adr < 0x8000) {
                self.mbc1RomMode = @intFromBool(value > 0);
            } else {
                self.memory[adr] = value;
            }

            // mbc 2
        } else if (self.romtype == 0x02) {
            if (adr < 0x2000) {
                self.mbc2RamEnabled = (value > 0);
            } else if (adr < 0x4000) {
                if (value == 0x00 or value == 0x20 or value == 0x40 or value == 0x60) {
                    self.mbc2RomNum = (value & 0x1f) + 1;
                }
            } else {
                self.memory[adr] = value;
            }

            // mbc3
        } else if (self.romtype == 0x03) {
            if (adr < 0x2000) {
                self.mbc3RamEnabled = (value > 0);
            } else if (adr < 0x4000) {
                if (value == 0x00) {
                    self.mbc3RomNum = 0x01;
                } else {
                    self.mbc3RomNum = value;
                }
            } else if (adr < 0x6000) {
                self.mbc3RamNum = value;
            } else if (self.mbc3RamEnabled and (self.mbc3RamNum == 1) and (adr >= 0xa000 and adr < 0xc000)) {
                self.ram[self.mbc3RomNum][adr] = value;
            } else {
                self.memory[adr] = value;
            }
        }
    }
};
