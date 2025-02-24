const std = @import("std");
const opcodes = @import("opcodes.zig");
const c = @import("cpu.zig").CPU;


pub fn NOP_(self: *c) void {
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADDa_e(self: *c) void {
    self.a += self.e;
    self.f = 0;
    if (self.a == 0) self.f |= self.zeroMask;
    if (self.a < self.e) self.f |= self.carryMask;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CPa_b(self: *c) void {
    const temp = self.a -% self.b; 
    self.f |= self.subMask; 
    if (temp == 0) self.f |= self.zeroMask; 
    if (temp > self.a) self.f |= self.carryMask; 
    self.clock.m = 1;
    self.clock.t = 4;
}


pub fn PUSH_b_c(self: *c, mmu: *MMU) void {
    self.sp -= 1;
    mmu.wb(self.sp, self.b);
    self.sp -= 1;
    mmu.wb(self.sp, self.c);
    self.clock.m = 3;
    self.clock.t = 12;
}

pub fn POP_h_l(self: *c, mmu: *MMU) void {
    self.l = mmu.rb(self.sp);
    self.sp += 1;
    self.h = mmu.rb(self.sp);
    self.sp += 1;
    self.clock.m = 3;
    self.clock.t = 12;
}

pub fn LD_a_mm(self: *c, mmu: *MMU) void {
    const addr = mmu.rw(self.pc);
    self.pc += 2;
    self.a = mmu.rb(addr);
    self.clock.m = 4;
    self.clock.t = 16;
}