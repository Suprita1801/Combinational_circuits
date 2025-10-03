`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2025 09:03:24 AM
// Design Name: 
// Module Name: full_add_inst
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


module full_add_inst(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    wire s, c, c1;
    
    half_add HA1 (a,b,s,c);
    half_add HA2 (cin,s,sum,c1);
    assign cout = c | c1;
    
    endmodule
    
    module half_add(
    input a,
    input b,
    output sum,
    output carry
    );
    
    assign sum = a ^ b;
    assign carry = a & b;
    
endmodule
