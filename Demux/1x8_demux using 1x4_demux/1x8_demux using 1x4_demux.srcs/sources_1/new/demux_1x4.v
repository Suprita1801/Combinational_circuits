`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:06:00 AM
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
    input i,
    input [1:0] sel,
    output reg [3:0] y
    );
    
    always @(*) begin
    case(sel)
    
    4'b0000: y[0] = i;
    4'b0010: y[1] = i;
    4'b0100: y[2] = i;
    4'b1000: y[3] = i;
    
    endcase
    end
endmodule
