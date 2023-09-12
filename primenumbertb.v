`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 06:59:28
// Design Name: 
// Module Name: primenumbertb
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


module primenumbertb();

    reg [7:0] number;
    wire prime;

    // Instantiate the module to be tested
    primenumber uut (
        .number(number),
        .prime(prime)
    );

    // Clock generation
    reg clock = 0;
    always #5 clock = ~clock;

    // Test cases
    initial begin
        $monitor("number=%h, prime=%b", number, prime);

        // Test case 1: Number is prime (e.g., 7)
        number = 7;
        #10;

        // Test case 2: Number is not prime (e.g., 12)
        number = 12;
        #10;

        // Test case 3: Number is 0
        number = 0;
        #10;

        // Test case 4: Number is 1
        number = 1;
        #10;

        // Add more test cases here

        $finish;
    end

endmodule

