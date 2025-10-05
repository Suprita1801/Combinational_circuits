`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2025 03:43:51 PM
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(
    input i,
    input sel,
    output reg y0,y1
    );
    
    always @(*) begin
    case(sel)
        1'b0 : y0 = i;
        1'b1 : y1 = i;
    endcase
    end
endmodule
