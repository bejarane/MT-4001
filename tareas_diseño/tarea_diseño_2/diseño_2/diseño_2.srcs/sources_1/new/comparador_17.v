`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2021 06:15:54 PM
// Design Name: 
// Module Name: comparador_17
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparador_17(
    input [16:0] A,
    input [16:0] B,
    output igual,
    output menor,
    output mayor
    );
    //assign mayor = 1'b0;
    assign igual = (A==B)?1'b1:1'b0;
    assign menor = (A<B)?1'b1:1'b0;
    assign mayor = (A>B)?1'b1:1'b0;  
endmodule
