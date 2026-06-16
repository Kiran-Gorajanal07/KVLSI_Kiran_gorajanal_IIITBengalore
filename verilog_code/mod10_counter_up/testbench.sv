// Code your testbench here
// or browse Examples
module mod10_counter_up_tb;
  reg clk, rst;
  wire[3:0]count;
  
  mod10_counter_up dut(clk, rst, count);
  
  initial begin
    clk=0;
    rst = 0;  //asserting the reset
    
    #5 rst = 1;  //deasserting
    
    #100 $finish;
    
  end
  always #2 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, mod10_counter_up_tb);
  end
endmodule

