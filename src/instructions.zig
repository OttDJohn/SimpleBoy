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

// BIT MANIP
// 0
pub fn BIT_0a(self: *c) void {
    flag(self, self.a & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_0b(self: *c) void {
    flag(self, self.b & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_0c(self: *c) void {
    flag(self, self.c & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_0d(self: *c) void {
    flag(self, self.d & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_0e(self: *c) void {
    flag(self, self.e & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_0h(self: *c) void {
    flag(self, self.h & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_0l(self: *c) void {
    flag(self, self.l & 0x01, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 1
pub fn BIT_1a(self: *c) void {
    flag(self, self.a & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_1b(self: *c) void {
    flag(self, self.b & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_1c(self: *c) void {
    flag(self, self.c & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_1d(self: *c) void {
    flag(self, self.d & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_1e(self: *c) void {
    flag(self, self.e & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_1h(self: *c) void {
    flag(self, self.h & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_1l(self: *c) void {
    flag(self, self.l & 0x02, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 2
pub fn BIT_2a(self: *c) void {
    flag(self, self.a & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_2b(self: *c) void {
    flag(self, self.b & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_2c(self: *c) void {
    flag(self, self.c & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_2d(self: *c) void {
    flag(self, self.d & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_2e(self: *c) void {
    flag(self, self.e & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_2h(self: *c) void {
    flag(self, self.h & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_2l(self: *c) void {
    flag(self, self.l & 0x04, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 3
pub fn BIT_3a(self: *c) void {
    flag(self, self.a & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_3b(self: *c) void {
    flag(self, self.b & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_3c(self: *c) void {
    flag(self, self.c & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_3d(self: *c) void {
    flag(self, self.d & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_3e(self: *c) void {
    flag(self, self.e & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_3h(self: *c) void {
    flag(self, self.h & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_3l(self: *c) void {
    flag(self, self.l & 0x08, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 4
pub fn BIT_4a(self: *c) void {
    flag(self, self.a & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_4b(self: *c) void {
    flag(self, self.b & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_4c(self: *c) void {
    flag(self, self.c & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_4d(self: *c) void {
    flag(self, self.d & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_4e(self: *c) void {
    flag(self, self.e & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_4h(self: *c) void {
    flag(self, self.h & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_4l(self: *c) void {
    flag(self, self.l & 0x10, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 5
pub fn BIT_5a(self: *c) void {
    flag(self, self.a & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_5b(self: *c) void {
    flag(self, self.b & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_5c(self: *c) void {
    flag(self, self.c & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_5d(self: *c) void {
    flag(self, self.d & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_5e(self: *c) void {
    flag(self, self.e & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_5h(self: *c) void {
    flag(self, self.h & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_5l(self: *c) void {
    flag(self, self.l & 0x20, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 6
pub fn BIT_6a(self: *c) void {
    flag(self, self.a & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_6b(self: *c) void {
    flag(self, self.b & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_6c(self: *c) void {
    flag(self, self.c & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_6d(self: *c) void {
    flag(self, self.d & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_6e(self: *c) void {
    flag(self, self.e & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_6h(self: *c) void {
    flag(self, self.h & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_6l(self: *c) void {
    flag(self, self.l & 0x40, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// 7
pub fn BIT_7a(self: *c) void {
    flag(self, self.a & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_7b(self: *c) void {
    flag(self, self.b & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_7c(self: *c) void {
    flag(self, self.c & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_7d(self: *c) void {
    flag(self, self.d & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_7e(self: *c) void {
    flag(self, self.e & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_7h(self: *c) void {
    flag(self, self.h & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

pub fn BIT_7l(self: *c) void {
    flag(self, self.l & 0x80, false);
    self.clock.m = 2;
    self.clock.t = 8;
}

// ADDS
pub fn ADD_a(self: *c) void {
    self.a +%= self.a;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_b(self: *c) void {
    self.a +%= self.b;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_c(self: *c) void {
    self.a +%= self.c;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_d(self: *c) void {
    self.a +%= self.d;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_e(self: *c) void {
    self.a +%= self.e;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_l(self: *c) void {
    self.a +%= self.l;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADD_h(self: *c) void {
    self.a +%= self.h;
    flag(self, self.a, false);
    if (self.a > 255) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn ADDHL_bc(self: *c) void {
    var hl = (self.h << 8) + self.l;
    hl +%= (self.b << 8) + self.c;
    if (hl > 0xFFFF) {
        self.f |= 0x10;
    } else {
        self.f &= 0xEF;
    }
    self.h = (hl >> 8) & 0xFF;
    self.l = hl & 0xFF;
    self.clock.m = 3;
    self.clock.t = 12;
}

pub fn ADDHL_de(self: *c) void {
    var hl = (self.h << 8) + self.l;
    hl +%= (self.d << 8) + self.e;
    if (hl > 0xFFFF) {
        self.f |= 0x10;
    } else {
        self.f &= 0xEF;
    }
    self.h = (hl >> 8) & 0xFF;
    self.l = hl & 0xFF;
    self.clock.m = 3;
    self.clock.t = 12;
}

pub fn ADDHL_hl(self: *c) void {
    var hl = (self.h << 8) + self.l;
    hl +%= (self.h << 8) + self.l;
    if (hl > 0xFFFF) {
        self.f |= 0x10;
    } else {
        self.f &= 0xEF;
    }
    self.h = (hl >> 8) & 0xFF;
    self.l = hl & 0xFF;
    self.clock.m = 3;
    self.clock.t = 12;
}

pub fn ADDHL_sp(self: *c) void {
    var hl = (self.h << 8) + self.l;
    hl +%= self.sp;
    if (hl > 0xFFFF) {
        self.f |= 0x10;
    } else {
        self.f &= 0xEF;
    }
    self.h = (hl >> 8) & 0xFF;
    self.l = hl & 0xFF;
    self.clock.m = 3;
    self.clock.t = 12;
}

// ADD and CARRY
pub fn ADC_a(self: *c) void {
    self.a +%= self.a;
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
    self.a +%= self.b;
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
    self.a +%= self.c;
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
    self.a +%= self.d;
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
    self.a +%= self.e;
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
    self.a +%= self.h;
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
    self.a +%= self.l;
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

// SUBTRACTION
pub fn SUB_a(self: *c) void {
    self.a -%= self.a;
    flag(self, self.a, true);
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SUB_b(self: *c) void {
    self.a -%= self.b;
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SUB_c(self: *c) void {
    self.a -%= self.c;
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SUB_d(self: *c) void {
    self.a -%= self.d;
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SUB_e(self: *c) void {
    self.a -%= self.e;
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SUB_h(self: *c) void {
    self.a -%= self.h;
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SUB_l(self: *c) void {
    self.a -%= self.l;
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

// SUBTRACT with CARRY
pub fn SBC_a(self: *c) void {
    self.a -%= self.a;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SBC_b(self: *c) void {
    self.a -%= self.b;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SBC_ca(self: *c) void {
    self.a -%= self.c;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SBC_d(self: *c) void {
    self.a -%= self.d;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SBC_e(self: *c) void {
    self.a -%= self.e;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SBC_h(self: *c) void {
    self.a -%= self.h;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
        self.f |= 0x10;
    }
    self.a &= 0xFF;
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn SBC_l(self: *c) void {
    self.a -%= self.l;
    self.a -%= (self.f & 0x10);
    if (!self.carryFlag()) {
        self.a -= 1;
    }
    flag(self, self.a, true);
    if (self.a < 0) {
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

// AND
pub fn AND_a(self: *c) void {
    self.a &= self.a;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn AND_b(self: *c) void {
    self.a &= self.b;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn AND_c(self: *c) void {
    self.a &= self.c;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn AND_d(self: *c) void {
    self.a &= self.d;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn AND_e(self: *c) void {
    self.a &= self.e;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn AND_h(self: *c) void {
    self.a &= self.h;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn AND_l(self: *c) void {
    self.a &= self.l;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

// OR
pub fn OR_a(self: *c) void {
    self.a |= self.a;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn OR_b(self: *c) void {
    self.a |= self.b;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn OR_c(self: *c) void {
    self.a |= self.c;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn OR_d(self: *c) void {
    self.a |= self.d;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn OR_e(self: *c) void {
    self.a |= self.e;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn OR_h(self: *c) void {
    self.a |= self.h;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn OR_l(self: *c) void {
    self.a |= self.l;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

// ANDOR
pub fn XOR_a(self: *c) void {
    self.a ^= self.a;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn XOR_b(self: *c) void {
    self.a ^= self.b;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn XOR_c(self: *c) void {
    self.a ^= self.c;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn XOR_d(self: *c) void {
    self.a ^= self.d;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn XOR_e(self: *c) void {
    self.a ^= self.e;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn XOR_h(self: *c) void {
    self.a ^= self.h;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn XOR_l(self: *c) void {
    self.a ^= self.l;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

// INCREMENT
pub fn INC_a(self: *c) void {
    self.a +%= 1;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_b(self: *c) void {
    self.b +%= 1;
    self.b &= 0xFF;
    flag(self, self.b, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_c(self: *c) void {
    self.c +%= 1;
    self.c &= 0xFF;
    flag(self, self.c, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_d(self: *c) void {
    self.d +%= 1;
    self.d &= 0xFF;
    flag(self, self.d, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_e(self: *c) void {
    self.e +%= 1;
    self.e &= 0xFF;
    flag(self, self.e, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_h(self: *c) void {
    self.h +%= 1;
    self.h &= 0xFF;
    flag(self, self.h, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_l(self: *c) void {
    self.l +%= 1;
    self.l &= 0xFF;
    flag(self, self.l, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_bc(self: *c) void {
    self.c +%= 1;
    if (self.c == 0) {
        self.b +%= 1;
    }
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_de(self: *c) void {
    self.e +%= 1;
    if (self.e == 0) {
        self.d +%= 1;
    }
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_hl(self: *c) void {
    self.l +%= 1;
    if (self.l == 0) {
        self.h +%= 1;
    }
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn INC_sp(self: *c) void {
    self.sp +%= 1;
    self.clock.m = 1;
    self.clock.t = 4;
}

// DECREMENT
pub fn DEC_a(self: *c) void {
    self.a -%= 1;
    self.a &= 0xFF;
    flag(self, self.a, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_b(self: *c) void {
    self.b -%= 1;
    self.b &= 0xFF;
    flag(self, self.b, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_c(self: *c) void {
    self.c -%= 1;
    self.c &= 0xFF;
    flag(self, self.c, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_d(self: *c) void {
    self.d -%= 1;
    self.d &= 0xFF;
    flag(self, self.d, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_e(self: *c) void {
    self.e -%= 1;
    self.e &= 0xFF;
    flag(self, self.e, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_h(self: *c) void {
    self.h -%= 1;
    self.h &= 0xFF;
    flag(self, self.h, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_l(self: *c) void {
    self.l -%= 1;
    self.l &= 0xFF;
    flag(self, self.l, false);
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_bc(self: *c) void {
    self.c -%= 1;
    if (self.c == 0xFF) {
        self.b -%= 1;
    }
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_de(self: *c) void {
    self.e -%= 1;
    if (self.e == 0xFF) {
        self.d -%= 1;
    }
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_hl(self: *c) void {
    self.l -%= 1;
    if (self.l == 0xFF) {
        self.h -%= 1;
    }
    self.clock.m = 1;
    self.clock.t = 4;
}

pub fn DEC_sp(self: *c) void {
    self.sp -%= 1;
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