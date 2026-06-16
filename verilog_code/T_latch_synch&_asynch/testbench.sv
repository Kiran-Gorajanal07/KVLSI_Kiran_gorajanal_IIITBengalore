////////TESTBECH FOR T LATCH////////////

module tlatch_tb;
  reg slk, rst, T;
  wire Qsynch, Qasynch;
  
  tlatch dut (clk, rst, T, Qsynch, Qasynch);
  
  initial begin
    
    clk = 0;
    rst = 0;
    
    #12 rst = 1;
    T= 0;
    
    #5 T= 1;
    #10 T= 0;
    #2 T = 1;
    #1 T = 0;
    #10 T = 0;
    #2 T = 1;
    #10 $finish;
  end
  
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tlatch_tb);
  end
endmodule