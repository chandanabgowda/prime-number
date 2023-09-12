`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 08:02:00
// Design Name: 
// Module Name: pipeprimenumbertb
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


module pipeprimenumbertb();

    reg [7:0] number;
    wire prime;
    reg clk = 0;
    reg rst = 0;

    // Instantiate the module to be tested
    pipeprimenumber uut (
        .number(number),
        .prime(prime),
        .clk(clk),
        .rst(rst)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Stimulus generation
    initial begin
        // Reset initially
        rst = 1;
        number = 200; // Test with number 5
        #10;
        rst = 0; // Release reset
        #100; // Wait for a while
        $finish; // Finish simulation
    end

   

endmodule
