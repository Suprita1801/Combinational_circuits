`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 03:23:54 PM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input [3:0]i,
    input [1:0]sel,
    output reg y
    );
    
    always @ (*) begin
    case(sel)
    2'b00: y = i[0];
    2'b01: y = i[1];
    2'b10: y = i[2];
    2'b11: y = i[3];
    
    default: y = 1'bx;
    
    endcase
    
    end
    
    
    
endmodule
