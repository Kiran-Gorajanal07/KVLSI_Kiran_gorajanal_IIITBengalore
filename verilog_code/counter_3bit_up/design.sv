// Code your design here
////COUNTERS/////
///KIRAN GORAJANAL
////KVLSI2601039////


module counter_3bit(clk, rst, count);
  input clk, rst;
  output count;
  reg[2:0] temp;
  
  assign count = temp;
  
  always@(posedge clk )
    begin
      if(!rst)
        temp<=3'b000;
      else
        temp <= temp +1;
    end
endmodule
