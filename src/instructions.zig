const std = @import("std");
const opcode = @import("opcodes.zig");
const c = @import("cpu.zig");


pub fn execute(cpu: *c.SM83, op: u16) void {
    std.debug.print("0x{x}\n", .{op});
    return switch (op) {
        opcode.NOP => {},
        opcode.LD_BC_n16 => {
            cpu.SM83.setBC(op);
        }
    };
}