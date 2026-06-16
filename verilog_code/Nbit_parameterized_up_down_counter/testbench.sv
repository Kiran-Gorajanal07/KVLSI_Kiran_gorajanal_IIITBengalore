// Code your testbench here
// or browse Examples

module counter_parameterized_tb;

  parameter N = 4;

  reg clk, rst;
  reg dir;
  wire [N-1:0] count;

  //defparam dut.N = 8
  counter_parameterized #(8) dut (clk, rst,dir, count);

  initial begin
    clk = 0;
    rst = 0;
    #10 rst = 1;
    
    #10 dir = 0;
    
    #50 dir = 1;
    
    #500 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("sim_time=%0t, count=%0d", $time, count);
    $dumpfile("dump.vcd");
    $dumpvars(0, counter_parameterized_tb);
  end

endmodule