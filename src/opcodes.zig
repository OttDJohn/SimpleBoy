//All located here https://izik1.github.io/gbops/

pub const opcode = enum(u8) {
    // 0o0 - 0o7
    NOP = 0o0,
    LD_BC_n16 = 0o01,
    LD_BC_aa = 0o02,
    INC_BC = 0o03,
    INC_B = 0o04,
    DEC_B = 0o05,
    LD_B_n8 = 0o06,
    RLCA = 0o07,

    // 0o10 - 0o17
    LD_a16_SP = 0o10,
    ADD_HL_BC = 0o11,
    LD_A_BC_addr = 0o12,
    DEC_BC = 0o13,
    INC_C = 0o14,
    DEC_C = 0o15,
    LD_C_n8 = 0o16,
    RRCA = 0o17,

    // 0o20 - 0o27
    STOP = 0o20,
    LD_DE_n16 = 0o21,
    LD_DE_a = 0o22,
    INC_DE = 0o23,
    INC_D = 0o24,
    DEC_D = 0o25,
    LD_D_n8 = 0o26,
    RLA = 0o27,

    // 0o30 - 0o37
    JR = 0o30,
    ADD_HL_DE = 0o31,
    LD_A_DE_addr = 0o32,
    DEC_DE = 0o33,
    INC_E = 0o34,
    DEC_E = 0o35,
    LD_E_n8 = 0o36,
    RRA = 0o37,

    // 0o40 - 0o47
    JR_NZ = 0o40,
    LD_HL_n16 = 0o41,
    LD_HLI_a = 0o42,
    INC_HL = 0o43,
    INC_H = 0o44,
    DEC_H = 0o45,
    LD_H_n8 = 0o46,
    DAA = 0o47,

    // 0o50 - 0o57
    JR_Z = 0o50,
    ADD_HL_HL = 0o51,
    LD_A_HLI_addr = 0o52,
    DEC_HL = 0o53,
    INC_L = 0o54,
    DEC_L = 0o55,
    LD_L_n8 = 0o56,
    CPL = 0o57,

    // 0o60 - 0o67
    JR_NC = 0o60,
    LD_SP_n16 = 0o61,
    LD_HLD_a = 0o62,
    INC_SP = 0o63,
    INC_HL_addr = 0o64,
    DEC_HL_addr = 0o65,
    LD_HL_n8 = 0o66,
    SCF = 0o67,

    // 0o70 - 0o77
    JR_C = 0o70,
    ADD_HL_SP = 0o71,
    LD_A_HLD_addr = 0o72,
    DEC_SP = 0o73,
    INC_A = 0o74,
    DEC_A = 0o75,
    LD_A_n8 = 0o76,
    CCF = 0o77,

    // 0o100 - 0o107
    LD_B_B = 0o100,
    LD_B_C = 0o101,
    LD_B_D = 0o102,
    LD_B_E = 0o103,
    LD_B_H = 0o104,
    LD_B_L = 0o105,
    LD_B_HL_addr = 0o106,
    LD_B_A = 0o107,

    // 0o110 - 0o117
    LD_C_B = 0o110,
    LD_C_C = 0o111,
    LD_C_D = 0o112,
    LD_C_E = 0o113,
    LD_C_H = 0o114,
    LD_C_L = 0o115,
    LD_C_HL_addr = 0o116,
    LD_C_A = 0o117,

    // 0o120 - 0o127
    LD_D_B = 0o120,
    LD_D_C = 0o121,
    LD_D_D = 0o122,
    LD_D_E = 0o123,
    LD_D_H = 0o124,
    LD_D_L = 0o125,
    LD_D_HL_addr = 0o126,
    LD_D_A = 0o127,

    // 0o130 - 0o137
    LD_E_B = 0o130,
    LD_E_C = 0o131,
    LD_E_D = 0o132,
    LD_E_E = 0o133,
    LD_E_H = 0o134,
    LD_E_L = 0o135,
    LD_E_HL_addr = 0o136,
    LD_E_A = 0o137,

    // 0o140 - 0o147
    LD_H_B = 0o140,
    LD_H_C = 0o141,
    LD_H_D = 0o142,
    LD_H_E = 0o143,
    LD_H_H = 0o144,
    LD_H_L = 0o145,
    LD_H_HL_addr = 0o146,
    LD_H_A = 0o147,

    // 0o150 - 0o157
    LD_L_B = 0o150,
    LD_L_C = 0o151,
    LD_L_D = 0o152,
    LD_L_E = 0o153,
    LD_L_H = 0o154,
    LD_L_L = 0o155,
    LD_L_HL_addr = 0o156,
    LD_L_A = 0o157,

    // 0o160 - 0o167
    LD_HL_B = 0o160,
    LD_HL_C = 0o161,
    LD_HL_D = 0o162,
    LD_HL_E = 0o163,
    LD_HL_H = 0o164,
    LD_HL_L = 0o165,
    HALT = 0o166,
    LD_HL_A = 0o167,

    // 0o170 - 0o177
    LD_A_B = 0o170,
    LD_A_C = 0o171,
    LD_A_D = 0o172,
    LD_A_E = 0o173,
    LD_A_H = 0o174,
    LD_A_L = 0o175,
    LD_A_HL_addr = 0o176,
    LD_A_A = 0o177,

    // 0o200 - 0o207
    ADD_A_B = 0o200,
    ADD_A_C = 0o201,
    ADD_A_D = 0o202,
    ADD_A_E = 0o203,
    ADD_A_H = 0o204,
    ADD_A_L = 0o205,
    ADD_A_HL_addr = 0o206,
    ADD_A_A = 0o207,

    // 0o210 - 0o217
    ADC_A_B = 0o210,
    ADC_A_C = 0o211,
    ADC_A_D = 0o212,
    ADC_A_E = 0o213,
    ADC_A_H = 0o214,
    ADC_A_L = 0o215,
    ADC_A_HL_addr = 0o216,
    ADC_A_A = 0o217,

    // 0o220 - 0o227
    SUB_A_B = 0o220,
    SUB_A_C = 0o221,
    SUB_A_D = 0o222,
    SUB_A_E = 0o223,
    SUB_A_H = 0o224,
    SUB_A_L = 0o225,
    SUB_A_HL_addr = 0o226,
    SUB_A_A = 0o227,

    // 0o230 - 0o237
    SBC_A_B = 0o230,
    SBC_A_C = 0o231,
    SBC_A_D = 0o232,
    SBC_A_E = 0o233,
    SBC_A_H = 0o234,
    SBC_A_L = 0o235,
    SBC_A_HL_addr = 0o236,
    SBC_A_A = 0o237,

    // 0o240 - 0o247
    AND_A_B = 0o240,
    AND_A_C = 0o241,
    AND_A_D = 0o242,
    AND_A_E = 0o243,
    AND_A_H = 0o244,
    AND_A_L = 0o245,
    AND_A_HL_addr = 0o246,
    AND_A_A = 0o247,

    // 0o250 - 0o257
    XOR_A_B = 0o250,
    XOR_A_C = 0o251,
    XOR_A_D = 0o252,
    XOR_A_E = 0o253,
    XOR_A_H = 0o254,
    XOR_A_L = 0o255,
    XOR_A_HL_addr = 0o256,
    XOR_A_A = 0o257,

    // 0o260 - 0o267
    OR_A_B = 0o260,
    OR_A_C = 0o261,
    OR_A_D = 0o262,
    OR_A_E = 0o263,
    OR_A_H = 0o264,
    OR_A_L = 0o265,
    OR_A_HL_addr = 0o266,
    OR_A_A = 0o267,

    // 0o270 - 0o277
    CP_A_B = 0o270,
    CP_A_C = 0o271,
    CP_A_D = 0o272,
    CP_A_E = 0o273,
    CP_A_H = 0o274,
    CP_A_L = 0o275,
    CP_A_HL_addr = 0o276,
    CP_A_A = 0o277,

    // 0o300 - 0o307
    RET_NZ = 0o300,
    POP_BC = 0o301,
    JP_NZ_a16 = 0o302,
    JP_a16 = 0o303,
    CALL_NZ_a16 = 0o304,
    PUSH_BC = 0o305,
    ADD_A_n8 = 0o306,
    RST_00 = 0o307,

    // 0o310 - 0o317
    RET_Z = 0o310,
    RET = 0o311,
    JP_Z_a16 = 0o312,
    PREFIX = 0o313,
    CALL_Z_a16 = 0o314,
    CALL_a16 = 0o315,
    ADC_A_n8 = 0o316,
    RST_08 = 0o317,

    // 0o320 - 0o327
    RET_NC = 0o320,
    POP_DE = 0o321,
    JP_NC_a16 = 0o322,
    CALL_NC_a16 = 0o324,
    PUSH_DE = 0o325,
    SUB_A_n8 = 0o326,
    RST_10 = 0o327,

    // 0o330 - 0o337
    RET_C = 0o330,
    RETI = 0o331,
    JP_C_a16 = 0o332,

    CALL_C_a16 = 0o334,
    PUSH_HL = 0o335,
    SBC_A_n8 = 0o336,
    RST_18 = 0o337,

    // 0o340 - 0o347
    LDH_a8_A = 0o340,
    POP_HL = 0o341,
    LD_C_addr_A = 0o342,
    PUSH_AF = 0o345,
    AND_A_n8 = 0o346,
    RST_20 = 0o347,

    // 0o350 - 0o357
    ADD_SP_e8 = 0o350,
    JP_HL = 0o351,
    LD_a16_addr_A = 0o352,
    XOR_A_n8 = 0o356,
    RST_28 = 0o357,

    // 0o360 - 0o367
    LDH_A_a8 = 0o360,
    POP_AF = 0o361,
    LD_A_C_addr = 0o362,
    DI = 0o363,
    OR_A_n8 = 0o366,
    RST_30 = 0o367,

    // 0o370 - 0o377
    LD_HL_SP_add_e8 = 0o370,
    LD_SP_HL = 0o371,
    LD_A_a16_addr = 0o372,
    EI = 0o373,
    CP_A_n8 = 0o376,
    RST_38 = 0o377,
};