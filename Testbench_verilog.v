`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2024 08:40:45
// Design Name: 
// Module Name: Traffic_Light_Controller_TB
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

module Traffic_Light_Controller_tb;

    reg clk;
    reg rst;

    wire [2:0] light_M1;
    wire [2:0] light_S;
    wire [2:0] light_MT;
    wire [2:0] light_M2;

    Traffic_Light_Controller uut (
        .clk(clk), 
        .rst(rst), 
        .light_M1(light_M1), 
        .light_S(light_S), 
        .light_MT(light_MT), 
        .light_M2(light_M2)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1; 

        
        #20;
        rst = 0; 

        
        #200;
        $stop;  // Stop the simulation
    end

    
    initial begin
        $monitor("At time %t: light_M1 = %b, light_S = %b, light_MT = %b, light_M2 = %b", 
                 $time, light_M1, light_S, light_MT, light_M2);
    end

endmodule
