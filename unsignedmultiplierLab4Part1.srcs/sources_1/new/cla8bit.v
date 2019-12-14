`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2019 08:01:26 PM
// Design Name: 
// Module Name: cla8bit
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


module cla8bit(input [7:0] A, input [7:0] B, input cin, output cout, output [7:0] sum);
    wire cout0;
    fourbitadder f1(A[3:0], B[3:0], cin, cout0, sum[3:0]);
    fourbitadder f2(A[7:4], B[7:4], cout0, cout, sum[7:4]);
endmodule
