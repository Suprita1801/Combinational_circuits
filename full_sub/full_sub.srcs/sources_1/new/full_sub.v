`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 10:32:12 AM
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
    
    assign diff = a ^ b ^ b_in;
    assign borrow = (~a)& b_in + (~a) & b + b&b_in;
    
endmodule
