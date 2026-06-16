// Code your design here
//KIRAN GORAJANAL
//KVLSI2601039

/////////////MOD-10 COUNTER//////////////

module mod10_counter_up(clk, rst, count);
  input clk, rst;
  output[3:0]count;
  reg [3:0] temp;
  
  assign count = temp;
  
  always@(posedge clk)
    begin
      if(!rst)
        temp<=4'b0000;
      else
        if(temp == 4'b1001);
      else
        temp<=temp+1;
    end
endmodule