const std = @import("std");
const opcodes = @import("opcodes.zig");
const c = @import("cpu.zig").CPU;


pub fn NOP(cpu: *c) void {
    cpu.clock.m = 1;
    cpu.clock.t = 4;
}


pub fn ADDr_e(cpu: *c) void {
    cpu.a += cpu.e;
    cpu.f = 0;
    if (cpu.a == 0) cpu.f |= cpu.zeroMask;
    if (cpu.a < cpu.e) cpu.f |= cpu.carryMask;
}