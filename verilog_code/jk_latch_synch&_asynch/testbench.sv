// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples

 module test;
    reg j,k,clk,rst;
    wire Qs,Qas;
  
   jklatch dut(j,k,clk,rst,Qs,Qas);
  
   initial begin
    
     clk= 0;
     rst= 0;
     #12 rst= 1;
     #1 j= 0; k=1;
     #10 j=1; k=0;
     #5 j=1; k=1;
     #10 j=0; k=0;
     #5 j=0; k=1;
    
     #10 $finish;
   end
      
     always #5 clk= ~clk;
  
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0,j,k,clk,rst,Qs,Qas);
     $dumpvars(0,test);
     end
 endmodule

