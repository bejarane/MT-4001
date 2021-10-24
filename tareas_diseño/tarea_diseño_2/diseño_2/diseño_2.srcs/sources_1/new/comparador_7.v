`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2021 06:18:36 PM
// Design Name: 
// Module Name: comparador_7
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


module comparador_7(
    input [6:0] A,
    input [6:0] B,
    output igual,
    output menor,
    output mayor
    );
    
    assign igual = (A==B)?1'b1:1'b0;
    assign menor = (A<B)?1'b1:1'b0;
    assign mayor = (A>B)?1'b1:1'b0;  
endmodule
