`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2025 09:03:39 AM
// Design Name: 
// Module Name: 1x8_demux
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


module demux_1x8(
    input i,
    input [2:0] sel,
    output reg [7:0] y
    );
    
    always @ (*) begin
    y = 8'b0000_0000;
    case(sel)
    
        8'b0000_0000: y[0] = i;
        8'b0000_0010: y[1] = i;
        8'b0000_0100: y[2] = i;
        8'b0000_1000: y[3] = i;
        8'b0001_0000: y[4] = i;
        8'b0010_0000: y[5] = i;
        8'b0100_0000: y[6] = i;
        8'b1000_0000: y[7] = i;
        
        endcase
    end
    
endmodule
