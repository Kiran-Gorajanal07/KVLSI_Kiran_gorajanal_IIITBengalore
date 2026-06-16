// Code your testbench here
// or browse Examples
module counter_3bit_tb;
  reg clk, rst;
  wire [2:0]count;
  
  counter_3bit dut (clk, rst, count);
  
  initial begin
    
    clk=0;
    rst = 0;
    
    #12 rst = 1;
    
    #100 $finish;
    
  end
  always#3 clk = ~clk;
  initial begin
    $monitor("sim_time=%0t, count=%0d", $time, count);
    
    $dumpfile("dump.vcd");
    $dumpvars(0,counter_3bit_tb);
  end
endmodule

  