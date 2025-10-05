`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 03:59:22 PM
// Design Name: 
// Module Name: decimal_to_bcd
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


module decimal_to_bcd(
    input [9:0] i,
    output [3:0] y
    );
    
    assign y[0] = i[1] | i[3] | i[5] | i[7];
    assign y[1] = i[2] | i[3] | i[6] | i[7];
    assign y[2] = i[4] | i[5] | i[6] | i[7];
    assign y[3] = i[8] | i[9];
    
endmodule
