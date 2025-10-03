`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 10:37:27 AM
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb();

reg a;
reg b;
reg b_in;
wire diff;
wire borrow;

full_sub uut(.a(a), .b(b), .b_in(b_in), .diff(diff), .borrow(borrow));

initial begin

$monitor("a = %b, b = %b, b_in = %b, diff = %b, borrow = %b", a,b,b_in,diff,borrow);

a = 1'b0 ; b = 1'b0 ; b_in = 1'b0 ; #5;
a = 1'b0 ; b = 1'b0 ; b_in = 1'b1 ; #5;
a = 1'b0 ; b = 1'b1 ; b_in = 1'b0 ; #5;
a = 1'b0 ; b = 1'b1 ; b_in = 1'b1 ; #5;
a = 1'b1 ; b = 1'b0 ; b_in = 1'b0 ; #5;
a = 1'b1 ; b = 1'b0 ; b_in = 1'b1 ; #5;
a = 1'b1 ; b = 1'b1 ; b_in = 1'b0 ; #5;
a = 1'b1 ; b = 1'b1 ; b_in = 1'b1 ; #5;

$finish;
end

endmodule
