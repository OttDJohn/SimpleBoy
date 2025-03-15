const std = @import("std");
const opcodes = @import("opcodes.zig");
const c = @import("cpu.zig").CPU;

pub fn NOP_(self: *c) void {
    self.clock.m = 1;
    self.clock.t = 4;
    self.pc += 1;
}

pub fn HALT_(self: *c) void {
    self.clock.m = 1;
    self.clock.t = 4;
}

//Reg LOADS
pub fn LD_ab(self: *c) void {
    self.a = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ac(self: *c) void {
    self.a = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ad(self: *c) void {
    self.a = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ae(self: *c) void {
    self.a = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ah(self: *c) void {
    self.a = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_al(self: *c) void {
    self.a = self.l;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_aa(self: *c) void {
    self.a = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_bb(self: *c) void {
    self.b = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_bc(self: *c) void {
    self.b = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_bd(self: *c) void {
    self.b = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_be(self: *c) void {
    self.b = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_bh(self: *c) void {
    self.b = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_bl(self: *c) void {
    self.b = self.l;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ba(self: *c) void {
    self.b = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_cb(self: *c) void {
    self.c = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_cc(self: *c) void {
    self.c = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_cd(self: *c) void {
    self.c = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ce(self: *c) void {
    self.c = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ch(self: *c) void {
    self.c = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_cl(self: *c) void {
    self.c = self.l;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ca(self: *c) void {
    self.c = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_db(self: *c) void {
    self.d = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_dc(self: *c) void {
    self.d = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_dd(self: *c) void {
    self.d = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_de(self: *c) void {
    self.d = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_dh(self: *c) void {
    self.d = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_dl(self: *c) void {
    self.d = self.l;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_da(self: *c) void {
    self.d = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_eb(self: *c) void {
    self.e = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ec(self: *c) void {
    self.e = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ed(self: *c) void {
    self.e = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ee(self: *c) void {
    self.e = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_eh(self: *c) void {
    self.e = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_el(self: *c) void {
    self.e = self.l;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ea(self: *c) void {
    self.e = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_hb(self: *c) void {
    self.h = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_hc(self: *c) void {
    self.h = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_hd(self: *c) void {
    self.h = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_he(self: *c) void {
    self.h = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_hh(self: *c) void {
    self.h = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_hl(self: *c) void {
    self.h = self.l;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ha(self: *c) void {
    self.h = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_lb(self: *c) void {
    self.l = self.b;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_lc(self: *c) void {
    self.l = self.c;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_ld(self: *c) void {
    self.l = self.d;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_le(self: *c) void {
    self.l = self.e;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_lh(self: *c) void {
    self.l = self.h;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn LD_la(self: *c) void {
    self.l = self.a;
    self.clock.m = 1;
    self.clock.t = 4;
}

//Reg ADDS
pub fn ADD_a(self: *c) void {
    self.a += self.a;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_b(self: *c) void {
    self.a += self.b;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_c(self: *c) void {
    self.a += self.c;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_d(self: *c) void {
    self.a += self.d;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_e(self: *c) void {
    self.a += self.e;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_l(self: *c) void {
    self.a += self.l;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_h(self: *c) void {
    self.a += self.h;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

// ADD and CARRY
pub fn ADC_a(self: *c) void {
    self.a += self.a;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADC_b(self: *c) void {
    self.a += self.b;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADC_c(self: *c) void {
    self.a += self.c;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADC_d(self: *c) void {
    self.a += self.d;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADC_e(self: *c) void {
    self.a += self.e;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADC_h(self: *c) void {
    self.a += self.h;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADC_l(self: *c) void {
    self.a += self.l;
    if (self.f & 0x10 != 0) {
        self.a += 1;
    }
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

// COMPARE
pub fn CP_a(self: *c) void {
    const temp = self.a -% self.a; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CP_b(self: *c) void {
    const temp = self.a -% self.b; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CP_c(self: *c) void {
    const temp = self.a -% self.c; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CP_d(self: *c) void {
    const temp = self.a -% self.d; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CP_e(self: *c) void {
    const temp = self.a -% self.e; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CP_h(self: *c) void {
    const temp = self.a -% self.h; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn CP_l(self: *c) void {
    const temp = self.a -% self.l; //proper wrapping for u8
    flag(self, temp, true);
    if (temp < 0) self.f |= 0x10;
    self.clock.m = 1;
    self.clock.t = 4;
}



// Helper Functions

pub fn flag(self: *c, i: u8, as: bool) void {
    self.f = 0;
    if ((i & 0xFF) == 0) {
        self.f |= 0x80;
    }
    if (as) {
        self.f |= 0x40;
    }
}