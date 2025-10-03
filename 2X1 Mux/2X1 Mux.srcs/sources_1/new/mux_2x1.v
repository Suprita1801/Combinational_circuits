`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 12:45:49 PM
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
    input [1:0]i,
    input s,
    output reg y
    );
    
    always @(*) begin
    case(s)
        1'b0: y = i[0];
        1'b1: y  = i[1];
        default: y = 1'bx;
        
        endcase
        end
        // assign y =(s) ? i[1] : i[0];
endmodule
