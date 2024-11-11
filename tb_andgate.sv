`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:08:11 PM
// Design Name: 
// Module Name: tb_andgate
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


module tb_andgate;
    
    logic a, b;
    logic f;
    
    andgate dut (
    .a(a),
    .b(b),
    .f(f)
     );
    
    initial begin
    $display("Time\t a\t b\t f");
    $display("-------------------");
    
    a = 0; b = 0; #10; // 0 0 
    $display("%0t\t %b\t %b\t %b", $time, a, b, f);
    a = 0; b = 1; #10;// 0 1
    $display("%0t\t %b\t %b\t %b", $time, a, b, f);
    a = 1; b = 0; #10;// 1 0
    $display("%0t\t %b\t %b\t %b", $time, a, b, f);
    a = 1; b = 1; #10;// 1 1
    $display("%0t\t %b\t %b\t %b", $time, a, b, f);
    $finish;
    
    end
endmodule
