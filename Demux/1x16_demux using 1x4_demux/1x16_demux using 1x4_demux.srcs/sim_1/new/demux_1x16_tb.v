`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:39:35 AM
// Design Name: 
// Module Name: demux_1x16_tb
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


module demux_1x16_tb();

reg i;
reg [3:0] sel;
wire [15:0] y;

demux_1x16 uut(.i(i), .sel(sel), .y(y));


initial begin

$monitor("Time=%0t | i=%b | sel=%b | y=%b", $time, i, sel, y);


i = 1'b0; sel = 4'b0000 ; #5; //0
i = 1'b1; sel = 4'b0101 ; #5; //5
i = 1'b0; sel = 4'b1010 ; #5; //0
i = 1'b1; sel = 4'b1111 ; #5; //15

$finish;

end
endmodule
