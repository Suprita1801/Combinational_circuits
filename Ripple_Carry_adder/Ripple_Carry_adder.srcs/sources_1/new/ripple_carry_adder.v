`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2025 11:22:11 AM
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(
    input [3:0] a,
    input [3:0] b,
    input c,
    output [3:0] sum,
    output cout
    );
    
    wire c1,c2,c3;
    
    full_adder FA0 (.a(a[0]), .b(b[0]), .c(c), .sum(sum[0]), .cout(c1));
    full_adder FA1 (.a(a[1]), .b(b[1]), .c(c1), .sum(sum[1]), .cout(c2));
    full_adder FA2 (.a(a[2]), .b(b[2]), .c(c2), .sum(sum[2]), .cout(c3));
    full_adder FA3 (.a(a[3]), .b(b[3]), .c(c3), .sum(sum[3]), .cout(cout));
    
endmodule


module full_adder(
input a,
input b,
input c,
output sum,
output cout
);


wire s,c1,c2;

half_adder HA1 (.a(a),.b(b), .sum(s), .cout(c1));
half_adder HA2 (.a(s), .b(c) ,.sum(sum),.cout(c2));

assign cout = c1 | c2;

endmodule

module half_adder(
input a,
input b,
output sum,
output cout
);

assign sum = a ^ b;
assign cout = a & b;


endmodule
