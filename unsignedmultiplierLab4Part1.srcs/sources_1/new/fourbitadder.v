module fourbitadder(input [3:0] A, input [3:0] B, input cin, output cout, output [3:0] sum);


    
    wire [3:0] Gsig;  
    wire [3:0] Psig;
    wire [4:0] outputCLA;

    
    half_adder HA0(.A(A[0]),
                   .B(B[0]),
                   .HA_G(Gsig[0]),
                   .HA_P(Psig[0]));
                   
   
                   
    half_adder HA1(.A(A[1]),
                   .B(B[1]),
                   .HA_G(Gsig[1]),
                   .HA_P(Psig[1]));
                   
    half_adder HA2(.A(A[2]),
                   .B(B[2]),
                   .HA_G(Gsig[2]),
                   .HA_P(Psig[2]));
                   
                   
    half_adder HA3(.A(A[3]),
                   .B(B[3]),
                   .HA_G(Gsig[3]),
                   .HA_P(Psig[3]));
    
    
    carry_lookaheadrevB CLAgen(.P(Psig),
                               .G(Gsig),
                               .cin(cin),
                               .cout(outputCLA));
    
    xor_gate xor0(.x1(outputCLA[0]),
                  .x2(Psig[0]),
                  .outXor(sum[0]));
                  
    xor_gate xor1(.x1(outputCLA[1]),
                  .x2(Psig[1]),
                  .outXor(sum[1]));
                  
    xor_gate xor2(.x1(outputCLA[2]),
                  .x2(Psig[2]),
                  .outXor(sum[2]));
                  
    xor_gate xor3(.x1(outputCLA[3]),
                  .x2(Psig[3]),
                  .outXor(sum[3]));
    
    assign cout = outputCLA[4]; 
    
   
        
endmodule
