`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 09:59:28 PM
// Design Name: 
// Module Name: demux_1x2_tb
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


module demux_1x2_tb();

reg i;
reg sel;
wire [1:0] y;

demux_1x2 uut(.i(i), .sel(sel), .y(y));

initial begin
i = 1'b0 ; sel = 1'b0; #5;
i = 1'b1 ; sel = 1'b0; #5;
i = 1'b0 ; sel = 1'b1; #5;
i = 1'b1 ; sel = 1'b1; #5;

end


endmodule
