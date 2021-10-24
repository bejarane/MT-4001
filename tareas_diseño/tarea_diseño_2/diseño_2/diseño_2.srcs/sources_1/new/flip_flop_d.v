module FlipFlopD (CLK, D, RST, En, Q);
  input CLK, RST, EN, D; 
  output reg Q;
  
  always @(posedge CLK)
    if (RST) begin
      Q <= 1'b0;
    end else if (En) begin 
      Q <= D;
    end
    
endmodule
