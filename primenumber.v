`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 06:39:03
// Design Name: 
// Module Name: primenumber
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


module primenumber(
    input [7:0] number,
    output reg prime
);
    reg [7:0] i;
always @(number) begin

    prime = 1; // Assume the number is prime
    
    // 0 and 1 are not prime numbers
    if (number == 0 || number == 1) begin
        prime = 0;
    end else begin
        // Check for divisibility from 2 to the square root of the number
        for (i = 2; i * i <= number; i = i + 1) begin
            if (number % i == 0) begin
                prime = 0; // Number is divisible, not prime
                
            end
        end
    end
end

endmodule


