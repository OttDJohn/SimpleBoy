const std = @import("std");
const opcodes = @import("opcodes.zig");
const c = @import("cpu.zig");


pub fn execute(cpu: *c.SM83, op: u8) void {
    std.debug.print("0x{x}\n", .{op});
    return switch (op) {
        opcodes.opcode.NOP => {},
        opcodes.opcode.LD_BC_n16 => {
            cpu.SM83.setBC(op);
        }
    };
}