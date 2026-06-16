// Code your design here

//////////////SYNCHRONOUS T LATCH///////////////////////

//T-LATCH

module tlatch (clk, rst, T, Qsynch, Qasynch);
  input clk, rst, T;
  output reg Qsynch, Qasynch;
  
  always@(clk, rst, T)
    begin
      if(clk)
        if(!rst) //Synch reset
          Qsynch<=0;
      else
        if(T)
        Qsynch<=~Qsynch;
    end
  
////////////AYNCHRONOUS T LATCH//////////////
  
  
  always@(clk, rst, T)
    begin
      if(!rst)
        Qasynch<=0;
      else
        if(clk)
          Qasynch<=~Qasynch;
    end
endmodule
  
  
  
  
  

      
