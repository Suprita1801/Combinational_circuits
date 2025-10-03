`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2025 04:17:45 PM
// Design Name: 
// Module Name: half_add_tb
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


module half_add_tb();
reg a;
reg b;
wire sum;
wire carry;

half_add uut (.a(a),.b(b),.sum(sum),.carry(carry));

initial begin

a = 0 ; b = 0; #10
a = 0 ; b = 1 ; #10
a = 1 ; b = 0 ; #10
a = 1 ; b = 1 ; #10

$display("Simulation finished.");
$finish;
end

endmodule
