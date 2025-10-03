`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2025 09:12:43 AM
// Design Name: 
// Module Name: full_add_tb
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


module full_add_tb();

reg a;
reg b;
reg cin;
wire sum;
wire cout;

full_add_inst uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin

$display("Time\t a b cin | sum cout");

a = 0; b = 0; cin = 0; #5;
a = 0; b = 0; cin = 1; #5;
a = 0; b = 1; cin = 0; #5;
a = 0; b = 1; cin = 1; #5;
a = 1; b = 0; cin = 0; #5;
a = 1; b = 0; cin = 1; #5;
a = 1; b = 1; cin = 0; #5;
a = 1; b = 1; cin = 1; #5;

$finish;

end


endmodule
