`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 12:42:35 PM
// Design Name: 
// Module Name: packed_unpacked_arr
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


module packed_unpacked_arr();
bit[0:3]array[0:3][0:4]='{'{4'h1,4'h2,4'h3,4'h4,4'h5},
                    '{4'h1,4'h3,4'h5,4'h7,4'h9},
                    '{4'h2,4'h4,4'h6,4'h8,4'h0},
                    '{4'h5,4'h4,4'h3,4'h2,4'h1}};
initial begin
foreach(array[i,j])begin
$display("array[%0d][%0d]=%0d",i,j,array[i][j]);
end
end                    
                    
endmodule
