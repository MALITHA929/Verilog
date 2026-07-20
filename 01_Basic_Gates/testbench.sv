`timescale 1ns/1ps

module testbench;

    reg A, B;
    reg EN;

    wire and_Y;
    wire or_Y;
    wire not_Y;
    wire nand_Y;
    wire nor_Y;
    wire xor_Y;
    wire xnor_Y;
    wire tri_Y;

    // Instantiate Modules
    and_gate U1 (.A(A), .B(B), .Y(and_Y));
    or_gate U2 (.A(A), .B(B), .Y(or_Y));
    not_gate U3 (.A(A), .Y(not_Y));
    nand_gate U4 (.A(A), .B(B), .Y(nand_Y));
    nor_gate U5 (.A(A), .B(B), .Y(nor_Y));
    xor_gate U6 (.A(A), .B(B), .Y(xor_Y));
    xnor_gate U7 (.A(A), .B(B), .Y(xnor_Y));
    tristate_buffer U8 (.A(A), .EN(EN), .Y(tri_Y));

    initial begin
      
      
      	$dumpfile("dump.vcd");
    	$dumpvars(0, testbench);

        $display("--------------------------------------------------------------");
        $display("A B EN | AND OR NOT NAND NOR XOR XNOR TRI");
        $display("--------------------------------------------------------------");

        // Test 1
        A=0; B=0; EN=0;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 2
        A=0; B=0; EN=1;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 3
        A=0; B=1; EN=0;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 4
        A=0; B=1; EN=1;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 5
        A=1; B=0; EN=0;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 6
        A=1; B=0; EN=1;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 7
        A=1; B=1; EN=0;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        // Test 8
        A=1; B=1; EN=1;
        #10;
        $display("%b %b %b |  %b   %b   %b    %b    %b   %b    %b    %b",
                 A,B,EN,and_Y,or_Y,not_Y,nand_Y,nor_Y,xor_Y,xnor_Y,tri_Y);

        $finish;
    end

endmodule