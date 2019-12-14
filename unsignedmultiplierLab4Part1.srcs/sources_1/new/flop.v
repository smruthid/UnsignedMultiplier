module flop #(parameter WIDTH = 4) (input clk, reset, input [WIDTH-1 : 0] d, output reg [WIDTH-1 : 0] q);
    always @ (posedge clk) begin
        if(reset) q <= 0;
       // else if(en) q<=d;
        else q <= d;
        end
endmodule
