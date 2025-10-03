`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 11:06:40 AM
// Design Name: 
// Module Name: full_sub_instantation
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


module full_sub_instantation();

reg a;
reg b;
reg b_in;
wire diff;
wire borrow;

full_sub uut (.a(a),.b(b),.b_in(b_in),.diff(diff),.borrow(borrow));

initial begin 

$monitor("a = %b, b = %b, b_in = %b, diff = %b, borrow = %b" , a,b,b_in,diff,borrow);

a = 1'b0 ; b = 1'b0 ; b_in = 1'b0 ; #2;
a = 1'b0 ; b = 1'b0 ; b_in = 1'b1 ; #2;
a = 1'b0 ; b = 1'b1 ; b_in = 1'b0 ; #2;
a = 1'b0 ; b = 1'b1 ; b_in = 1'b1 ; #2;
a = 1'b1 ; b = 1'b0 ; b_in = 1'b0 ; #2;
a = 1'b1 ; b = 1'b0 ; b_in = 1'b1 ; #2;
a = 1'b1 ; b = 1'b1 ; b_in = 1'b0 ; #2;
a = 1'b1 ; b = 1'b1; b_in = 1'b1; #2;

$finish;

end


endmodule
