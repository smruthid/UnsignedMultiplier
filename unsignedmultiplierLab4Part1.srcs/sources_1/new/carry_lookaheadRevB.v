module carry_lookaheadrevB(input [3:0] P, input [3:0] G, input cin, output [4:0] cout);
    assign cout[0] = cin;
    assign cout[1] = G[0] + (P[0]&cin);
    assign cout[2] = G[1] + (P[1]&G[0]) + (P[1]&P[0]&cin);
    assign cout[3] = G[2] + (P[2]&G[1]) + (P[2]&P[1]&G[0]) + (P[2]&P[1]&P[0]&cin);
    assign cout[4] = G[3] + (P[3]&G[2]) + (P[3]&P[2]&G[1]) + (P[3]&P[2]&P[1]&G[0]) +(P[3]&P[2]&P[1]&P[0]&cin);
endmodule
