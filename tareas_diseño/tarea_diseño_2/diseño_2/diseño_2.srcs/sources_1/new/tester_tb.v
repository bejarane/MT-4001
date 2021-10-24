module tester_tb();

reg[6:0] binario;
wire[7:0] bcd;
bin_bcd codificador(binario,bcd);

wire[6:0] LCD;
deco_seg_7 segmentos(bcd[3:0],LCD);


reg[6:0] i;
initial begin
    for (i = 0; i <15; i = i + 1) begin
        #5
        binario <= i;
	end
end
endmodule
