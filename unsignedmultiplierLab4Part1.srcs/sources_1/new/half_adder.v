module half_adder(input A, input B, output HA_G, output HA_P);
    assign HA_G = A&B;
    assign HA_P = A^B;
endmodule