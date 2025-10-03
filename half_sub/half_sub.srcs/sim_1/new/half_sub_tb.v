`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 10:24:29 AM
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb();

reg a;
reg b;
wire diff;
wire borrow;

half_sub uut (.a(a) , .b(b), .diff(diff), .borrow(borrow));

initial begin

$monitor("a = %b, b  = %b, diff = %b , borrow = %b",a,b,diff,borrow); 

a = 1'b0 ; b = 1'b0 ; #10;
a = 1'b0 ; b = 1'b1 ; #10;
a = 1'b1 ; b = 1'b0 ; #10;
a = 1'b1 ; b = 1'b1 ; #10;

$finish;
end

endmodule
