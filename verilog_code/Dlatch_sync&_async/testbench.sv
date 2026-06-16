// Code your testbench here
// or browse Examples
module test;
  
  reg clk,rst,d;
  wire Qsynch, QAsynch;
  
  dlatch dut (clk,rst,d,Qsynch, QAsynch);
  
  
  initial begin
    clk= 0;
    rst= 0;
    
    #12 rst= 1;
    d= 0;
    
    #5 d=1;
    #10 d= 0;
    #2 d= 1;
    #1  d= 0;
    #10 d= 0;
    #10 $finish;
  end
    
    always #5 clk=~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,d,Qsynch, QAsynch);
  end
endmodule