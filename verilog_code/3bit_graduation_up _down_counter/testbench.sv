// Code your testbench here
// or browse Examples
module updown_counter_3bit_tb;

  reg clk, rst;
  wire [2:0] count;

  updown_counter_3bit dut(clk, rst, count);

  initial begin
    clk = 0;
    rst = 0;

    #10 rst = 1;

    #200 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t count=%0d", $time, count);
    $dumpfile("updown.vcd");
    $dumpvars(0, updown_counter_3bit_tb);
  end

endmodule