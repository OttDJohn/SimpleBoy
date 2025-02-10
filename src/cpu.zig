const std = @import("std");

pub const Registers = struct {
    a: u8,
    b: u8,
    c: u8,
    d: u8,
    e: u8,
    f: u8,
    h: u8,
    l: u8,
    sp: u16,
    pc: u16,

    pub fn getBC(self: *Registers) u16 {
        return @as(u16, self.b) << 8 | @as(u16, self.c);
    }

    pub fn setBC(self: *Registers, value: u16) void {
        self.b = @intCast((value >> 8) & 0xFF);
        self.c = @intCast(value & 0xFF);
    }

};

test "reg test" {
    var regs = Registers{
        .a = 0,
        .b = 0,
        .c = 0,
        .d = 0,
        .e = 0,
        .f = 0,
        .h = 0,
        .l = 0,
        .sp = 0,
        .pc = 0,
    };
    regs.setBC(0x0106);
    std.debug.print("b: {}, c: {}\n", .{regs.b, regs.c});
    std.debug.print("{x}\n", .{regs.getBC()});
}