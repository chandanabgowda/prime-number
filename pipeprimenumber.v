`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 07:19:43
// Design Name: 
// Module Name: pipeprimenumber
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


module pipeprimenumber(
    input [7:0] number,
    output reg prime,
    input clk,
    input rst
);

reg [7:0] i;
wire prime_f;
reg [7:0] number_r;


primenumber uut (
    .number(number_r),
    .prime(prime_f)
);

always @(posedge clk, posedge rst) begin
    if (rst) begin
        number_r <= 8'b0;
        
    end else begin
        number_r <= number;
        
    end
end


always @(posedge clk) begin
    if (rst) begin
        prime <= 1'b0;
    end else begin
        prime <= prime_f;
    end
end

endmodule
