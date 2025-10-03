`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2025 08:49:33 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a;
reg b;
reg c;
wire sum;
wire carry;

full_adder uut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

initial begin

a = 0 ; b = 0 ; c = 0; #5
a = 0 ; b = 0 ; c = 1; #5
a = 0 ; b = 1 ; c = 0; #5
a = 0 ; b = 1 ; c = 1; #5
a = 1 ; b = 0 ; c = 0; #5
a = 1 ; b = 0 ; c = 1; #5
a = 1 ; b = 1 ; c = 0; #5
a = 1 ; b = 1 ; c = 1; #5

$finish;

end

endmodule
