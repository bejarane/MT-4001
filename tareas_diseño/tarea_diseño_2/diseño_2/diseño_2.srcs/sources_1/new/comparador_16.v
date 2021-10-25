module comparador_16(
    input [15:0] A,
    input [15:0] B,
    output igual,
    output menor,
    output mayor
    );
    //assign mayor = 1'b0;
    assign igual = (A==B)?1'b1:1'b0;
    assign menor = (A<B)?1'b1:1'b0;
    assign mayor = (A>B)?1'b1:1'b0;  
endmodule
