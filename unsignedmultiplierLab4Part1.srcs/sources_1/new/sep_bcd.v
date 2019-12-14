`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 03:01:52 PM
// Design Name: 
// Module Name: sep_bcd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sep_bcd(input [7:0] in, output reg [3:0] out0, out1, out2);

always @* begin
    out2 = in/100;
    out1 = (in%100)/10;
    out0 = in%10;
end
    
endmodule
