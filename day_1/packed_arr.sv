`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 12:20:27 PM
// Design Name: 
// Module Name: packed_arr
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


module packed_arr();
bit[0:2][0:3]array='{'{2},'{3},'{6}};
initial begin 
foreach (array[i])begin
$display("array[%0d]=%0d",i,array[i]);
end
end
endmodule
