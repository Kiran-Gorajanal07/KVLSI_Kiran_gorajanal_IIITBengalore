// Code your design here
//KIRAN GORAJANL
//KVLSI2601039

/*
//////////3BIT UP/DOWN GRADUAL COUNTER//////////
module updown_counter_3bit(clk, rst, count);

  input clk, rst;
  output [2:0] count;

  reg [2:0] temp;
  reg dir;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst) begin
      temp <= 0;
      dir  <= 1;
    end
    else begin
      if (dir && temp == 3'b111) begin
        dir  <= 0;
        temp <= temp - 1;
      end
      else if (!dir && temp == 3'b000) begin
        dir  <= 1;
        temp <= temp + 1;
      end
      else if (dir)
        temp <= temp + 1;
      else
        temp <= temp - 1;
    end
  end

endmodule
*/


/////////with flag////////////

module updown_counter_3bit(clk, rst, count);

  input clk, rst;
  output [2:0] count;

  reg [2:0] temp;
  reg flag;   // 1 = up, 0 = down

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst) begin
      temp <= 0;
      flag <= 1;   
    end
    else begin
      if (flag && temp == 3'b111) begin
        flag <= 0;
        temp <= temp - 1;
      end
      else if (!flag && temp == 3'b000) begin
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