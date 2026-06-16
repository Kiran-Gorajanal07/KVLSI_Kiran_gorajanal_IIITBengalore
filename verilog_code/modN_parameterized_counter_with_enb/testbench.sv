// Code your testbench here
// or browse Examples
module counter_parameterized_mod_tb;

  parameter N = 6;

  reg clk, rst;
  wire [($clog2(N)-1):0] count;

  modNparameterized_counter_up #(50) dut (clk, rst, count);

  initial begin
    clk = 0;
    rst = 0;

    #10 rst = 1;

    #200 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("sim_time=%0t, count=%0d", $time, count);
    $dumpfile("dump.vcd");
    $dumpvars(0, counter_parameterized_mod_tb);
  end

endmodule