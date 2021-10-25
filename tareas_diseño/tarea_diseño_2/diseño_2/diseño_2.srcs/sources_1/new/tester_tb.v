`timescale 1ns / 1ps

module tester_tb();
reg CLK, Start, RST;


//contador de 17
wire [16:0] Q0;
wire X0;
wire rst_contador0;
contador_17 contador0 (CLK,17'b0,rst_contador0,X0,1'b0,Q0);

//sistema comparador 17 bits
//por limites de diseño la comparacion maxima solo se da en palabras de 16bits
//el MSB se compara por aparte y se integran resultados
wire mayor0;
comparador_16 comparador0(.A(Q0[15:0]),.B(16'd100000),.mayor(mayor0));

wire mayor0_1;
or_2 or0(Q0[16],~1'b1,mayor0_1);

wire ms_0;
and_2 and0(mayor0,mayor0_1,ms_0);
//retorno para el contador 0

wire ci;
or_3 or1(ms_0,ci,RST,rst_contador0);

//or par el reset del flipflop
wire rst_flop;
or_2 or2(ci,RST,rst_flop);
//flipflop de start y control de contadores
flip_flop_t ff0(CLK,Start,rst_flop,1'b1,X0);

//contador de 7 bits
wire [6:0] Q1;
contador_7 contador1 (ms_0,7'b0,rst_flop,1'b1,1'b0,Q1);

//comparador de 7 bits
comparador_7 comparador1(.A(Q1),.B(7'd99),.mayor(ci));

//conversion binario BCD
wire[7:0] bcd;
bin_bcd codificador(Q1,bcd);

//conversion BCD LCD
wire[6:0] LCD;
deco_seg_7 lcd0(bcd,LCD);


reg[6:0] i;
initial begin
		// Initialize Inputs
		Start = 0;RST = 0;
		CLK = 0;
		#100 RST = 1;
		#100 RST = 0;
		#100 Start = 1;
		#10 Start = 0;
		#200000000 Start = 1;
		#10 Start = 0;
		// Wait 100 ns for global reset to finish
		#100;
	end
	always #5 CLK = ~CLK;
endmodule
