// Code your design here
/////9. Design a gradually increment and decrement counter which count the values in following pattern (if count-is of 2-bit)
//////// 0->1->2->3->2->1->0>1->2->3..........////////////

module updown_2bit(clk, rst, count);

  input clk, rst;
  output [1:0] count;

  reg [1:0] temp;
  reg flag;   

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst) begin
      temp <= 2'b00;
      flag <= 1;
    end
    else begin
      if (flag && temp == 2'b11) begin
        flag <= 0;
        temp <= temp - 1;
      end
      else if (!flag && temp == 2'b00) begin
        flag <= 1;
        temp <= temp + 1;
      end
      else if (flag)
        temp <= temp + 1;
      else
        temp <= temp - 1;
    end
  end

endmodule