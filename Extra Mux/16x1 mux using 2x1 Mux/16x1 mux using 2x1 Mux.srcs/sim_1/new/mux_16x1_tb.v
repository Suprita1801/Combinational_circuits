`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 07:10:34 PM
// Design Name: 
// Module Name: mux_16x1_tb
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


module mux_16x1_tb();

reg [15:0] i;
reg [3:0] sel;
wire y;

mux_16x1 uut(.i(i), .sel(sel), .y(y));

initial begin

i = 16'd1824; sel = 4'b1111; #10;
i = 16'd0105; sel = 4'b0101; #10;
i = 16'd0609; sel = 4'b1010; #10;
i = 16'd2826; sel = 4'b0010; #10;
i = 16'd2402; sel = 4'b0011; #10;


end

endmodule
