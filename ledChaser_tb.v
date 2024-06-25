`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 21:17:36
// Design Name: 
// Module Name: ledChaser_tb
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


module ledChaser_tb;
reg clock=0;
reg reset;
reg [7:0]initstate;
wire [7:0]led;

ledChaser DUT(
.clock(clock),
.reset(reset),
.initstate(initstate),
.led(led));

initial 
begin
    reset = 1'b1;
    initstate = 8'b00000011;
    #2 reset = 1'b0;
end
    
always
begin
    #5 clock <= ~clock;
end

endmodule
