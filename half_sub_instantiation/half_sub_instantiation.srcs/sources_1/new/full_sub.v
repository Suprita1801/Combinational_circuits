`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 10:47:09 AM
// Design Name: 
// Module Name: full_sub
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


module full_sub(
    input a,
    input b,
    input b_in,
    output diff,
    output borrow
    );
    
    wire d, b1, b2;
    
    half_sub HS1(.a(a), .b(b), .diff(d), .borrow(b1));
    half_sub HS2 (.a(d), .b(b_in), .diff(diff), .borrow(b2));
    
    assign borrow = b1 | b2;
    
endmodule

module half_sub(
input a,
input b,
output diff,
output borrow
);

assign diff = a ^ b;
assign borrow = (~a) & b;
endmodule
