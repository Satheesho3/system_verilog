`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 05:40:24 PM
// Design Name: 
// Module Name: two_dimensional
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


module two_dimensional();
int array [5][2]='{{2,3},'{1,3},'{3,4},'{4,5},'{6,7}};
initial begin
foreach(array[i,j])begin
$display("array[%0d][%0d]=%0d",i,j,array[i][j]);
end
end
endmodule
