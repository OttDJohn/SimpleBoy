const std = @import("std");

pub const Registers = struct {
    a: u8 = 0xF,
    b: u8 = 0xF,
    c: u8 = 0xF,
    d: u8 = 0xF,
    e: u8 = 0xF,
    f: u8 = 0xF,
    h: u8 = 0xF,
    l: u8 = 0xF,
    sp: u16 = 0xFF,
    pc: u16 = 0xFF,

    pub fn getAF(self: *Registers) u16 {
        return @as(u16, self.a) << 8 | @as(u16, self.f);
    }

    pub fn setAF(self: *Registers, value: u16) void {
        self.a = @intCast((value >> 8) & 0xFF);
        self.f = @intCast(value & 0xFF);
    }

    pub fn getBC(self: *Registers) u16 {
        return @as(u16, self.b) << 8 | @as(u16, self.c);
    }

    pub fn setBC(self: *Registers, value: u16) void {
        self.b = @intCast((value >> 8) & 0xFF);
        self.c = @intCast(value & 0xFF);
    }

    pub fn getDE(self: *Registers) u16 {
        return @as(u16, self.d) << 8 | @as(u16, self.e);
    }

    pub fn setDE(self: *Registers, value: u16) void {
        self.d = @intCast((value >> 8) & 0xFF);
        self.e = @intCast(value & 0xFF);
    }

    pub fn getHL(self: *Registers) u16 {
        return @as(u16, self.h) << 8 | @as(u16, self.l);
    }

    pub fn setHL(self: *Registers, value: u16) void {
        self.h = @intCast((value >> 8) & 0xFF);
        self.l = @intCast(value & 0xFF);
    }
};

test "reg test" {
    var regs = Registers{};
    regs.setBC(0x0106);
    std.debug.print("b: {}, c: {}\n", .{ regs.b, regs.c });
    std.debug.print("{x}\n", .{regs.getBC()});
    //push test
}
