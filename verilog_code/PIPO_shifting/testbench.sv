// Code your testbench here
// or browse Examples
module pipo_shifting_tb;

  reg clk, rst;
  reg [3:0] pi;
  wire [3:0] po;

  pipo_shifting dut(clk, rst, pi, po);

  initial begin
    clk = 0;
    rst = 0;
    pi  = 4'b0000;

    #10 rst = 1;

    #10 pi = 4'b1010;
    #10 pi = 4'b1100;
    #10 pi = 4'b0111;
    #10 pi = 4'b1111;

    #30 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | pi=%b | po=%b", $time, pi, po);

    $dumpfile("pipo.vcd");
    $dumpvars(0, pipo_shifting_tb);
  end

endmodule