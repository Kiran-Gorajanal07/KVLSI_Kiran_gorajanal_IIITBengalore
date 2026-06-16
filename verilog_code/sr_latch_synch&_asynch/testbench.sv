// Code your testbench here
// or browse Examples
//////// TESTBENCH CODE FOR SR LATCH//////

module srlatch_tb;
  reg s, r, clk, rst;
  wire Qsynch, Qasynch;
  
  srlatch dut (s, r, clk, rst, Qsynch, Qasynch);
  
  initial begin
    
    clk= 0;
     rst= 0;
     #12 rst= 1;
     #1 s= 0; r=1;
     #10 s=1; r=0;
     #5 s=1; r=1;
     #10 s=0; r=0;
     #5 s=0; r=1;
    
     #10 $finish;
   end
      
     always #5 clk= ~clk;
  
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0,s,r,clk,rst,Qsynch,Qasynch);
     $dumpvars(0,test);
     end
 endmodule