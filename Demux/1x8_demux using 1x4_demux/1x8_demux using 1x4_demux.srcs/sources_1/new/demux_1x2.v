`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:09:29 AM
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
    output reg [1:0] y
    );
    
    always @(*) begin
    case(sel)
    
    2'b00 : y[0] = i;
    2'b10 : y[1] = i;
     
    endcase
    end
endmodule
