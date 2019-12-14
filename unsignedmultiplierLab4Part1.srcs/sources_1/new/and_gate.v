module and_gate(input [3:0] A, input B, output [3:0] C);
    assign C[3] = A[3] & B;
    assign C[2] = A[2] & B;
    assign C[1] = A[1] & B;
    assign C[0] = A[0] & B;
    
endmodule