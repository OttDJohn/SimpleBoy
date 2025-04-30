const std = @import("std");
const lib = @import("SimpleBoy_lib");
const c = @import("cpu.zig").CPU;
const inst = @import("instructions.zig");
const mmu = @import("mmu.zig").MMU;

var cartridge: []u8 = undefined;
const this = @This();

pub fn main() !void {
    var cpu = c{};
    var m = mmu{};
    const unpaused: bool = true;
    //Boot Rom Reading
    m.initMMU();
    cpu.reset();
    while (cpu.pc < 200) {
        if (unpaused) {
            cpu.stepCPU(&m, &m.memory);
            std.debug.print("a: {x}, b: {x}, c: {x}, d: {x}, e: {x}, f: {x}, h: {x}, l: {x}, t: {}, m: {}, c.t: {}, c.m: {}, pc: {}, sp: {}\n", 
                        .{ cpu.a, cpu.b, cpu.c, cpu.d, cpu.e, cpu.f, cpu.h, cpu.l, cpu.t, cpu.m, cpu.clock.t, cpu.clock.m, cpu.pc, cpu.sp });
        }
    }
}

test "reg test" {
    var regs = c{};
    regs.a = 3;
    regs.b = 4;
    //const holdA = regs.a;
    //inst.CP_b(&regs);
    //regs.f = 0x10;
    inst.SUB_b(&regs);
    if (regs.zeroFlag()) {
        std.debug.print("f: {}, {s}\n", .{ regs.f, "set" });
    } else {
        std.debug.print("f: {}, {s}\n", .{ regs.f, "not set" });
    }
    std.debug.print("a: {}\n", .{regs.a});
    std.debug.print("timings: t = {}, m = {}\n", .{ regs.clock.t, regs.clock.m });
}
