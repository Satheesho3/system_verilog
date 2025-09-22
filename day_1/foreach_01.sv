`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 05:35:00 PM
// Design Name: 
// Module Name: foreach_01
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


module foreach_01();
int array[4]='{1,2,3,4};
initial begin
foreach(array[i])begin
$display("array[%0d]=%0d",i,array[i]);
end
end
endmodule
