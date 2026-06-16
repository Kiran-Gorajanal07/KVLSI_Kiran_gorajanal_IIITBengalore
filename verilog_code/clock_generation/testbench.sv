// Code your testbench here
// or browse Examples
 module test;
  
   reg clk;
   real freq=100; // (In MGA HRTZ)
   real tp= (1/freq)*1000;// in ns
   real duty= 80;
   real ton= tp*duty/100;
   real toff=tp-ton;
  
   initial begin
     clk= 0;
     $printtimescale;
    
     #200 $finish;
    
   end
  
   always begin
     #(toff) clk=1; 
   #(ton) clk= 0;
       
   end
  
  
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0,clk);
   end
 endmodule


/* module test;
  
   reg clk1,clk2;
  
   initial begin
     clk1= 0;
     clk2= 0;
    
     #200 $finish;
   end
  
   always #5 clk1= ~clk1;
  
   always begin
     		#15 clk2= 1;
     		#5 clk2= 0;
          end
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0,clk1,clk2);
   end
 endmodule

module test;
  
  reg clk,rst,t;
  
  initial begin
    clk= 0;
    t= 0;
    #3 rst= 0;
    #4 t= 1;
    #10 rst= 1;
    #5 t= 0;
    #11 t= 1;
    #25 $finish;
  end 
    
    
    always #5 clk= ~clk;
      initial begin
    $dumpfile("dump.vcd");
        $dumpvars(0,clk,rst,t);
  end
endmodule*/