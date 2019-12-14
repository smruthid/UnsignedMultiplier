module tb_mult;

    integer err_count = 0;
    integer i, j;
    reg [3:0] tb_A, tb_B;
    wire tb_cout;
    wire [7:0] tb_mult;
    reg tb_cin = 0;
    reg [7:0] expected_mult;
    
    unsigned_int_multiplier U1(tb_A, tb_B, tb_cin, tb_cout, tb_mult);
    
    initial begin
        for(i = 0; i < 16; i = i+1)
        begin
            tb_A = i;
            for(j = 0; j < 16; j = j+1)
            begin
                tb_B = j;
                expected_mult = tb_A * tb_B;
                    #6
                    if(tb_mult != expected_mult)
                    begin
                        err_count = err_count + 1;
                end
            end 
        end
    end

endmodule
