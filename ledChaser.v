`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 21:03:14
// Design Name: 
// Module Name: ledChaser
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


module ledChaser(
input clock,
input reset,
input [7:0]initstate,
output reg [7:0]led);

integer counter=0;
always@(posedge clock)
begin
    if(counter == 100000000)
    counter <= 0;
    else
    counter <= counter + 1'b1;
end
initial
led <= 8'b00000000; 
always@(posedge clock)
begin
    if(reset || led == 8'b00000000)
    led <= initstate;
    else
    led <= led << 1;
end
endmodule
