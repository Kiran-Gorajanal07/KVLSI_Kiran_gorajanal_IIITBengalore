// Code your design here
//////4 BIT UP COUNTER /////////
               
/*module counter_4bit(clk, rst, count);
  input clk, rst;
  output count;
  reg[3:0] temp;
  
  assign count = temp;
  
  always@(posedge clk )
    begin
      if(!rst)
        temp<=4'b000;
      else
        temp <= temp +1;
    end
endmodule


/////////4BIT DOWN COUNTER//////////

module counter_4bit(clk, rst, count);
  input clk, rst;
  output count;
  reg[3:0] temp;
  
  assign count = temp;
  
  always@(posedge clk )
    begin
      if(!rst)
        temp<=4'b000;
      else
        temp <= temp -1;
    end
endmodule */

//////////////4BIT UP-DOWN COUNTER//////////

module counter_4bit(clk, rst, dir, count);
  input clk, rst, dir;
  output [3:0] count;

  reg [3:0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 4'b0000;
    else if (dir)
      temp <= temp + 1;
    else
      temp <= temp - 1;
  end
endmodule