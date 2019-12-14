module tb_multiplier;

    integer err_count = 0;
    integer i, j;
    reg [3:0] tb_A, tb_B;
    wire tb_cout;
    wire [7:0] tb_mult;
    reg tb_cin = 0;
    reg [7:0] expected_mult;
    reg tb_clk;
    reg tb_rst = 0;
    reg tb_en = 1;
    
    initial begin
        tb_clk = 0;
    end
    
    always @(*) begin
       tb_clk <= #5 ~tb_clk;
 
    end
    
   pipeline_mult U1(tb_A, tb_B, tb_clk, tb_rst, tb_cout, tb_mult);
    
    initial begin
        for(i = 0; i < 16; i = i+1)
        begin
   
            tb_A = i; #10
            for(j = 0; j < 16; j = j+1)
            begin
                tb_B = j; #10
                expected_mult = tb_A * tb_B;
                    #5
                    if(tb_mult != expected_mult)
                    begin
                        err_count = err_count + 1;
                end
            end 
        end
    end

endmodule
