`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 04:35:11 PM
// Design Name: 
// Module Name: octal_to_encoder_tb
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


module octal_to_encoder_tb();

reg [7:0] i;
wire [2:0] y;

octal_to_binary uut (.i(i), .y(y));

initial begin

$monitor("Time = %\0t | i = %b | y = %b", $time, i, y);

i = 8'b0000_0010 ; #5; //1
i = 8'b0000_0100 ; #5; //2
i = 8'b0000_0110 ; #5; //3
i = 8'b0000_1000 ; #5; //2
i = 8'b0100_1010 ; #5; //0

$finish;

end
endmodule
