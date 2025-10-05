`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2025 04:03:15 PM
// Design Name: 
// Module Name: demux_1x4_tb
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


module demux_1x4_tb();

reg i;
reg [1:0] sel;
wire [3:0]y;

demux_1x4 uut(.i(i) , .sel(sel), .y(y));

initial begin

i = 4'b0010 ; sel = 2'b00 ; #5 ;
i = 4'b1001 ; sel = 2'b10 ; #5 ;
i = 4'b0110 ; sel = 2'b01 ; #5 ;
i = 4'b1100 ; sel = 2'b11 ; #5 ;

end


endmodule
