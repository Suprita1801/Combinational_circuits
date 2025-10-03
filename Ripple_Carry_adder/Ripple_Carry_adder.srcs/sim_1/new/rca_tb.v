`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 11:37:20 AM
// Design Name: 
// Module Name: rca_tb
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


module rca_tb();

reg [3:0] a;
reg [3:0]  b;
reg c;
wire [3:0] sum;
wire cout;

ripple_carry_adder uut(.a(a), .b(b), .c(c), .sum(sum), .cout(cout));

initial begin

$monitor("a = %b, b = %b, c = %b, sum = %b, cout = %b" ,a,b,c,sum,cout);

a = 4'b0000 ; b = 4'b0000 ; c = 1'b0; #4; 
a = 4'b0011 ; b = 4'b1100 ; c = 1'b0; #4;
a = 4'b1010 ; b = 4'b0101 ; c = 1'b0; #4;
a = 4'b0110 ; b = 4'b1001 ; c = 1'b0; #4;
a = 4'b0001 ; b = 4'b1000 ; c = 1'b0; #4;
a = 4'b0100 ; b = 4'b0110 ; c = 1'b0; #4;

$finish;

end


endmodule
