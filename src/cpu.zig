const std = @import("std");
const inst = @import("instructions.zig");
const mmu = @import("mmu.zig").MMU;

pub const CPU = struct {
    const Self = @This();
    // 8 bit registers(typically stacked)
    a: u8 = 0,
    b: u8 = 0,
    c: u8 = 0,
    d: u8 = 0,
    e: u8 = 0,
    f: u8 = 0,
    h: u8 = 0,
    l: u8 = 0,
    // 16 bit stack pointer and program counter
    sp: u16 = 0,
    pc: u16 = 0,
    m: u8 = 0,
    t: u8 = 0,
    halt: u16 = 0,
    mm: mmu = mmu{},

    //timers
    clock: struct {
        m: u8 = 0,
        t: u8 = 0,
    } = .{},

    pub fn getAF(self: *Self) u16 {
        return @as(u16, self.a) << 8 | @as(u16, self.f);
    }

    pub fn setAF(self: *Self, value: u16) void {
        self.a = @intCast((value >> 8) & 0xFF);
        self.f = @intCast(value & 0xFF);
    }

    pub fn getBC(self: *Self) u16 {
        return @as(u16, self.b) << 8 | @as(u16, self.c);
    }

    pub fn setBC(self: *Self, value: u16) void {
        self.b = @intCast((value >> 8) & 0xFF);
        self.c = @intCast(value & 0xFF);
    }

    pub fn getDE(self: *Self) u16 {
        return @as(u16, self.d) << 8 | @as(u16, self.e);
    }

    pub fn setDE(self: *Self, value: u16) void {
        self.d = @intCast((value >> 8) & 0xFF);
        self.e = @intCast(value & 0xFF);
    }

    pub fn getHL(self: *Self) u16 {
        return @as(u16, self.h) << 8 | @as(u16, self.l);
    }

    pub fn setHL(self: *Self, value: u16) void {
        self.h = @intCast((value >> 8) & 0xFF);
        self.l = @intCast(value & 0xFF);
    }

    pub fn getPC(self: *Self) u16 {
        return self.PC;
    }

    // had to set these values to const to get past comptime_int errors
    // didn't want to @intCast every time
    const zeroMask: u8 = 0x80;
    const subMask: u8 = 0x40;
    const halfMask: u8 = 0x20;
    const carryMask: u8 = 0x10;

    pub fn zeroFlag(self: *Self) bool {
        return (self.f & zeroMask) != 0;
    }

    pub fn setZeroFlag(self: *Self, value: bool) void {
        if (value == true) {
            self.f = self.f | zeroMask;
        } else {
            self.f = self.f & ~zeroMask;
        }
    }

    pub fn subFlag(self: *Self) bool {
        return (self.f & subMask) != 0;
    }

    pub fn setSubFlag(self: *Self, value: bool) void {
        if (value == true) {
            self.f = self.f | subMask;
        } else {
            self.f = self.f & ~subMask;
        }
    }

    pub fn halfFlag(self: *Self) bool {
        return (self.f & halfMask) != 0;
    }

    pub fn setHalfFlag(self: *Self, value: bool) void {
        if (value == true) {
            self.f = self.f | halfMask;
        } else {
            self.f = self.f & ~halfMask;
        }
    }

    pub fn carryFlag(self: *Self) bool {
        return (self.f & carryMask) != 0;
    }

    pub fn setCarryFlag(self: *Self, value: bool) void {
        if (value == true) {
            self.f = self.f | carryMask;
        } else {
            self.f = self.f & ~carryMask;
        }
    }

    pub fn reset(self: *Self) void {
        self.a = 0;
        self.b = 0;
        self.c = 0;
        self.d = 0;
        self.e = 0;
        self.h = 0;
        self.l = 0;
        self.f = 0;
        self.sp = 0;
        self.pc = 0;
        self.m = 0;
        self.t = 0;
        self.clock.m = 0;
        self.clock.t = 0;
        self.halt = 0x00;
    }

    pub fn stepCPU(self: *Self, m: *mmu, cart: []u8) void {
        switch (cart[self.pc]) {
            0x00 => {
                //stop
                self.pc += 1;
            },
            0x10 => {
                //nop
                self.pc += 1;
            },
            0x76 => {
                //halt
                self.halt = 0x00;
                self.pc += 1;
            },
            0x20 => {
                inst.JR_nz(self, m);
                self.pc += 1;
            },
            0x21 => {
                inst.LD_rrhl(self, m);
                self.pc += 3;
            },
            0x31 => {
                inst.LD_sp(self, cart[self.pc + 2], cart[self.pc + 1]);
                self.pc += 3;
            },
            0x32 => {
                inst.LD_hl_d(self, m);
                self.pc += 1;
            },
            0xaf => {
                inst.XOR_a(self);
                self.pc += 1;
            },

            // cb opcodes
            0xcb => {
                switch (m.readFromMem(self.pc + 1)) {
                    0x7c => {
                        inst.BIT_7h(self);
                        self.pc += 1;
                    },
                    else => {
                        self.pc += 1;
                    },
                }
            },
            else => {
                self.pc += 1;
            },
        }
    }
};
