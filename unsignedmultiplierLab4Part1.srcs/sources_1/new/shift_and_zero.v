

module shift_and_zero(input [3:0] in0, input [3:0] in1, input[3:0] in2, 
    input [3:0] in3, output [7:0] out0, output [7:0] out1, output [7:0] out2, output [7:0] out3);
   // wire [3:0] zero= 4'b0000;
    // reg [7:0] int0, int1, int2, int3;
    
      assign out0 = {4'b0000, in0};
      assign out1 = {3'b000, in1, 1'b0};
      assign out2 = {2'b00, in2, 2'b00};
      assign out3 = {1'b0, in3, 3'b000};
      
endmodule
