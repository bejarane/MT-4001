module flip_flop_t (CLK, T, RST, En, Q);
  input CLK, RST, T, En;
  output reg Q;

  always @(posedge RST or posedge CLK)
    if (RST)
      Q <= 1'b0;
    else
      if (T) 
        Q <= ~Q;
      else
        Q <= Q;
endmodule