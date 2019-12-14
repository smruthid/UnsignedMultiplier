module unsigned_int_multiplier(input [3:0] A, input[3:0] B, input cin, input cout, output [7:0] outputMult);
    wire [7:0] PP0, PP1, PP2, PP3, intSum0, intSum1;
    wire [3:0] C0, C1, C2, C3;
    wire cout8bit1, cout8bit2;
    
    and_gate and0(.A(A), .B(B[0]), .C(C0));
    and_gate and1(.A(A), .B(B[1]), .C(C1));
    and_gate and2(.A(A), .B(B[2]), .C(C2));
    and_gate and3(.A(A), .B(B[3]), .C(C3));

    shift_and_zero shift0(.in0(C0), .in1(C1), .in2(C2), .in3(C3), .out0(PP0), .out1(PP1), .out2(PP2), .out3(PP3));
    
    cla8bit cla0_1(.A(PP0), .B(PP1), .cin(cin), .cout(cout8bit1), .sum(intSum0));
    cla8bit cla2_3(.A(PP2), .B(PP3), .cin(cout8bit1), .cout(cout8bit2), .sum(intSum1));
    cla8bit claAll(.A(intSum0), .B(intSum1), .cin(cout8bit2), .cout(cout), .sum(outputMult));

endmodule
