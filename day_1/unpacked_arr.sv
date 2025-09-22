`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 12:31:19 PM
// Design Name: 
// Module Name: unpacked_arr
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


module unpacked_arr();
int array[0:2][0:5]='{'{2,4,3,7,6,3},
                      '{3,5,4,5,2,7},
                      '{1,2,3,4,5,6}};
initial begin
foreach (array[i,j])begin
$display("array[%0d][%0d]=%0d",i,j,array[i][j]);
end
end                      
endmodule
