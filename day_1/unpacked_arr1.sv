`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 02:13:52 PM
// Design Name: 
// Module Name: unpacked_arr1
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


module unpacked_arr1();
int array[0:2][0:2][0:3]='{'{'{2,4,6,8},'{4,3,2,1},'{5,6,7,8}},
                            '{'{1,5,7,0},'{3,4,5,6},'{5,6,7,8}},
                            '{'{1,2,2,3},'{2,4,6,8},'{3,2,1,4}}};
initial begin
foreach(array[i,j,k])begin
$display("array[%0d][%0d][%0d]=%0d",i,j,k,array[i][j][k]);
end
end                            
endmodule
