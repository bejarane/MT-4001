module contador_17 (CLK, D, RST, En, EnL, Q);

  input CLK, RST, En, EnL;
  input [16:0] D;
  output reg [16:0] Q;

  always @(posedge RST or posedge CLK)
    if (RST)
      Q <= 1'b0;
    else if(En)
        if (EnL)
            Q <= D;
        else
            Q <= Q + 1'b1;

endmodule