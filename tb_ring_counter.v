`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2023 08:53:36 PM
// Design Name: 
// Module Name: tb_ring_counter
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

module tb_ring;
    reg Clock;
    reg Reset;

    wire [3:0] Count_out;

    ring_counter uut (
        .Clock(Clock), 
        .Reset(Reset), 
        .Count_out(Count_out)
    );

    initial Clock = 0; 
    always #10 Clock = ~Clock; 
    
    initial
    begin
        Reset = 1; 
        #50;     
        Reset = 0; 
    end
      
endmodule