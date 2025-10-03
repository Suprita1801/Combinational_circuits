`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 03:46:15 PM
// Design Name: 
// Module Name: mux_8x1_tb
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


module mux_8x1_tb();

reg [7:0] i;
reg [2:0] sel;
wire y;

mux_8x1 uut(.i(i), .sel(sel),.y(y));

initial begin

$monitor("i = %b, sel = %b, y = %b", i,sel,y);

i =8'b0000_0000 ; sel = 3'b000; #5;
i =8'b0011_1100 ; sel = 3'b100; #5;
i =8'b0110_0100 ; sel = 3'b110; #5;
i =8'b1000_0010 ; sel = 3'b111; #5;
i =8'b1111_1111 ; sel = 3'b000; #5;

$finish;

end

endmodule
