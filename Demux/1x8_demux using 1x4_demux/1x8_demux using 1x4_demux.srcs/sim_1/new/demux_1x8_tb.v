`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:17:45 AM
// Design Name: 
// Module Name: demux_1x8_tb
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


module demux_1x8_tb();

reg i;
reg [2:0] sel;
wire [7:0] y;


demux_1x8 uut(.i(i), .sel(sel), .y(y));


initial begin

i = 1'b1; sel = 3'b010; #5; //2
i = 1'b0; sel = 3'b110; #5; //0
i = 1'b1; sel = 3'b011; #5; //3
i = 1'b0; sel = 3'b100; #5; //0
i = 1'b1; sel = 3'b111; #5; //7
end

endmodule
