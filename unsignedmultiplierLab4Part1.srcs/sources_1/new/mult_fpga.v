`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2019 04:19:43 PM
// Design Name: 
// Module Name: fourbit_fpga
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


module mult_fpga(input [3:0] A, input [3:0] B, input wire clk100MHz, input wire button1,
    input wire rst, output wire [3:0] LEDSEL,
    output wire [7:0] LEDOUT

    );
    
    
    wire cout;
    wire [3:0] sum; 
    //wire [3:0] Gsig;  
    //wire [3:0] Psig;
    //wire [4:0] outputCLA;
    wire [7:0] outputMult;
    wire [3:0] hundred, ten, one;
    wire [7:0] BCDOut1;
    wire [7:0] BCDOut2;
    wire [7:0] BCDOut3;
    wire DONT_USE;
    wire clk_5KHz;
    wire button;
    supply1 [7:0] vcc;
    
    
    clk_gen1 CLK (
        .clk100MHz (clk100MHz),
        .rst (rst),
        .clk_4sec (DONT_USE),
        .clk_5KHz (clk_5KHz)
    );   
    
    button_debouncer debounce(.clk(clk_5KHz), .button(button1), .debounced_button(button)); 
    
    pipeline_mult pipe1(A, B, button, rst, cout, outputMult);
    //pipeline_mult pipe1(.A(A), .B(B), .clk(clk100Mhz), .rst(rst), .cout(cout), );
    

    
    sep_bcd separator(outputMult, hundred, ten, one);
    bcd_to_7seg(hundred, BCDOut3);
    bcd_to_7seg(ten, BCDOut2);
    bcd_to_7seg(one, BCDOut1);
                
                    
   
   led_mux(.clk(clk_5KHz),
           .rst(rst),
           .LED3(vcc),
           .LED2(BCDOut1),
           .LED1(BCDOut2),
           .LED0(BCDOut3),
           .LEDSEL(LEDSEL),
           .LEDOUT(LEDOUT));            
        
endmodule
