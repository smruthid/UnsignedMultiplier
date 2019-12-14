

module pipeline(input [3:0] A, B1, input clock, reset, en, cin, cout, output [7:0] outputMult);
    wire [7:0] PP0, PP1, PP2, PP3, intSum0, intSum1;
    wire [3:0] C0, C1, C2, C3;
    wire cout8bit1, cout8bit2;
    wire [3:0] A1, B;
    wire [7:0] intSum0Reg, intSum1Reg;   
    

    
    flop f0(clock, reset, A, A1);
    //flop f1(clock, reset, B1, B);

    flop #(1) f1(clock, reset, B1[0], B[0]);
    flop #(1) f2(clock, reset, B1[1], B[1]);
    flop #(1) f3(clock, reset, B1[2], B[2]);
    flop #(1) f4(clock, reset, B1[3], B[3]);
    
    and_gate and0(.A(A1), .B(B[0]), .C(C0));
    and_gate and1(.A(A1), .B(B[1]), .C(C1));
    and_gate and2(.A(A1), .B(B[2]), .C(C2));
    and_gate and3(.A(A1), .B(B[3]), .C(C3));

    shift_and_zero shift0(.in0(C0), .in1(C1), .in2(C2), .in3(C3), .out0(PP0), .out1(PP1), .out2(PP2), .out3(PP3));
    
    cla8bit cla0_1(.A(PP0), .B(PP1), .cin(cin), .cout(cout8bit1), .sum(intSum0));    
    cla8bit cla2_3(.A(PP2), .B(PP3), .cin(cout8bit1), .cout(cout8bit2), .sum(intSum1));
    
    flop #(8) flopAdd1(clock, reset, intSum0, intSum0Reg);
    flop #(8) flopAdd2(clock, reset, intSum1, intSum1Reg);
    
    cla8bit claAll(.A(intSum0Reg), .B(intSum1Reg), .cin(cout8bit2), .cout(cout), .sum(outputMult));
    
    flop #(8) flopAdd3(clock, reset, outputMult, );
endmodule
