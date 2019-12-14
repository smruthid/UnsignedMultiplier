`timescale 1ns / 1ps

module pipeline_mult(input [3:0] A, input[3:0] B, input clk, rst, output cout, output [7:0] outputMult);
    wire [7:0] PP0, PP1, PP2, PP3, intSum0, intSum1;
    wire [3:0] C0, C1, C2, C3;
    wire cout8bit1, cout8bit2;
    
    wire [3:0] A1, B1;
    flop f0(clk, rst, A, A1);
//    flop #(1) f1(.clk(clk), .reset(rst), .d(B[3]), .q(B1[3]));
//    flop #(1) f2(.clk(clk), .reset(rst), .d(B[2]), .q(B1[2]));
//    flop #(1) f3(.clk(clk), .reset(rst), .d(B[1]), .q(B1[1]));
//    flop #(1) f4(.clk(clk), .reset(rst), .d(B[0]), .q(B1[0]));
    flop f1(clk, rst, B, B1);
    
    and_gate and0(.A(A1), .B(B[0]), .C(C0));
    and_gate and1(.A(A1), .B(B[1]), .C(C1));
    and_gate and2(.A(A1), .B(B[2]), .C(C2));
    and_gate and3(.A(A1), .B(B[3]), .C(C3));

    shift_and_zero shift0(.in0(C0), .in1(C1), .in2(C2), .in3(C3), .out0(PP0), .out1(PP1), .out2(PP2), .out3(PP3));
    
    cla8bit cla0_1(.A(PP0), .B(PP1), .cin('b0), .cout(cout8bit1), .sum(intSum0));
    cla8bit cla2_3(.A(PP2), .B(PP3), .cin('b0) , .cout(cout8bit2), .sum(intSum1));
 
    
    wire [7:0] intSum0Reg, intSum1Reg;
    flop #(8) f10(.clk(clk), .reset(rst), .d(intSum0), .q(intSum0Reg));
    flop #(8) f11(.clk(clk), .reset(rst), .d(intSum1), .q(intSum1Reg));
    
    wire [7:0] outputMultReg;
    cla8bit claAll(.A(intSum0Reg), .B(intSum1Reg), .cin(1'b0), .cout(cout), .sum(outputMultReg));
    flop #(8) f12(clk, rst, outputMultReg, outputMult);
    
   // flop #(8) f4(clk, rst, en, outputMultReg, outputMult);

endmodule

