// Code your design here

///////////PARAMETERIZED COUNTER_UP//////////
/*

module counter_parameterized #(parameter N = 4)(clk, rst, count);
  input clk, rst;
  output [N-1:0] count;
  reg [N-1:0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 0;
    else
      temp <= temp + 1;
  end
endmodule


//////////////PARAMETERIZED DOWN-COUNTER/////////////

module counter_parameterized #(parameter N = 4)(clk, rst, count);
  input clk, rst;
  output [N-1:0] count;
  reg [N-1:0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 0;
    else
      temp <= temp - 1;
  end
endmodule
*/

///////////////PARAMETERIZED UP/DOWN COUNTER//////////


module counter_parameterized #(parameter N = 4)(clk, rst, dir, count);
  input clk, rst;
  input dir;
  output [N-1:0] count;
  reg [N-1:0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 0;
    else
      if(dir)
        temp <= temp + 1;
    else
      temp <= temp - 1;
  end
endmodule


