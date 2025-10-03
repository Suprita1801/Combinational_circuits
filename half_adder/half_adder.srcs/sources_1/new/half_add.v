`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2025 04:12:18 PM
// Design Name: 
// Module Name: half_add
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


module half_add(
    input a,
    input b,
    output sum,
    output carry
    );
    
    assign sum = a & b;
    assign carry = a ^ b;
    
endmodule
