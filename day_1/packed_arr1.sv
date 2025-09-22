`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 01:39:39 PM
// Design Name: 
// Module Name: packed_arr1
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


module packed_arr1();
bit[0:2][0:1][3:0]array='{'{'{4'h2},'{4'h4}},
                         '{'{4'h4},'{4'h5}},
                         '{'{4'h1},'{4'h2}}};
initial begin
foreach (array[i,j])begin
$display("array[%0d][%0d]=%0d",i,j,array[i][j]);
end
end
endmodule
