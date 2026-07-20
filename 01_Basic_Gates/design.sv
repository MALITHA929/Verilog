//==============================================
// Module 1 - AND Gate
//==============================================
module and_gate(
    input A,
    input B,
    output Y
);
    assign Y = A & B;
endmodule

//==============================================
// Module 2 - OR Gate
//==============================================
module or_gate(
    input A,
    input B,
    output Y
);
    assign Y = A | B;
endmodule

//==============================================
// Module 3 - NOT Gate
//==============================================
module not_gate(
    input A,
    output Y
);
    assign Y = ~A;
endmodule

//==============================================
// Module 4 - NAND Gate
//==============================================
module nand_gate(
    input A,
    input B,
    output Y
);
    assign Y = ~(A & B);
endmodule

//==============================================
// Module 5 - NOR Gate
//==============================================
module nor_gate(
    input A,
    input B,
    output Y
);
    assign Y = ~(A | B);
endmodule

//==============================================
// Module 6 - XOR Gate
//==============================================
module xor_gate(
    input A,
    input B,
    output Y
);
    assign Y = A ^ B;
endmodule

//==============================================
// Module 7 - XNOR Gate
//==============================================
module xnor_gate(
    input A,
    input B,
    output Y
);
    assign Y = ~(A ^ B);
endmodule

//==============================================
// Module 8 - Tri-State Buffer
//==============================================
module tristate_buffer(
    input A,
    input EN,
    output Y
);
    assign Y = EN ? A : 1'bz;
endmodule