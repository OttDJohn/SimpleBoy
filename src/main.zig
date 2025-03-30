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
    while (true) {
        if (unpaused) {
            cpu.stepCPU(&m, &m.memory);
            cpu.m += cpu.clock.m;
            cpu.t += cpu.clock.t;
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
