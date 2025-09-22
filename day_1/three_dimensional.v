`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 05:46:41 PM
// Design Name: 
// Module Name: three_dimensional
// Tool Versions: 
// Description: 
// 

// Project Name: 
// Target Devices: // Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module three_dimensional();
int array[2][3][4]= '{'{'{1,2,3,4},'{4,3,2,1},'{5,6,7,8}},'{'{2,4,3,2},'{7,6,2,2},'{0,9,8,7}}};
initial begin
foreach(array[i,j,k])begin
$display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
end
end
endmodule
