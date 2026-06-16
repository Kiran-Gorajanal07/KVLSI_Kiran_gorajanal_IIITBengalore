// Code your testbench here
// or browse Examples


// Code your testbench here

//////TESTBENVH FOR MOD 100 COUNTER/////////

module mod100_counter_up_down_tb;
  reg clk, rst;
  reg dir;
  wire[6:0]count;
  
  mod100_counter_up_down dut(clk, rst, dir, count);
  
  initial begin
   
    clk=0;
   
    rst = 0;  //asserting the reset
    
    #5 rst = 1;  //deasserting
      dir = 1;
    
    #50 dir = 0;
    
    #500 $finish;
    
  end
  always #2 clk=~clk;
  
  initial begin
    
    $dumpfile("dump1.vcd");
    
    $dumpvars(0, mod100_counter_up_down_tb);
  end
endmodule

