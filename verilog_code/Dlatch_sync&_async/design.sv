// Code your design here
//SYNCHRONOUS RST

module dlatch (clk,rst,d,Qsynch, QAsynch);
  
  input clk,rst,d;
  output reg Qsynch, QAsynch;
  
  
  always@(clk,rst,d)
    begin
      if(!rst) // ASYNCH RST
        QAsynch<=0;
      else
        if(clk)
          QAsynch<=d;
          
    end

// DLATCH synchronoud RST

  
  always@(clk,rst,d)  // In latch -always block must include all the inputs
    begin
      if(clk)
        if(!rst)// SYNCH RST
        Qsynch<=0;
      else
        Qsynch<=d;
          
    end
endmodule