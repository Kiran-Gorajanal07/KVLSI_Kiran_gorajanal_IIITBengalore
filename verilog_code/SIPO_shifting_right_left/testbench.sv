module shiftng_tb;
  
  reg clk, rst, SI;
  wire PO;
  
  sipo_shifting dut(clk, rst, SI, PO);
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 0;
    SI = 0;
    
    #10 rst = 1;
    
    #5 SI = 1;
    #10 SI = 0;
    #10 SI = 1;
    #10 SI = 1;
    #10 SI = 0;
    #10 SI = 1;
    #10 SI = 0;
    #10 SI = 1;
    
    #50 $finish;
  end
    
  initial begin
    $monitor("sim_time=%0t, SI=%b, PO=%b", $time, SI, PO);
    $dumpfile("dump.vcd");
    $dumpvars(0, shiftng_tb);
  end
  
endmodule