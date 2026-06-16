// Code your design here
//KIRAN GORAJNAL 
///KVLSI2601039
///////////SIPO RIGHT SHIFT ////////////
/*
module sipo_shifting(clk, rst, SI, PO);
  input clk, rst, SI;
  output reg PO;
  
  reg [3:0] mem;
  always @(posedge clk)
    begin
      if(!rst)
        mem<= 4'b0000;
      else
        begin
          mem<={SI, mem[3:1]};
          PO<= mem;
        end
    end
endmodule
*/


///////////SIPO LEFT SHIFT//////////


  module sipo_shifting(clk, rst, SI, PO);
  input clk, rst, SI;
  output reg PO;
  
  reg [3:0] mem;
  always @(posedge clk)
    begin
      if(!rst)
        mem<= 4'b0000;
      else
        begin
          mem<={mem[2:0], SI};
          PO<= mem;
        end
    end
    
///////////////////sipo 