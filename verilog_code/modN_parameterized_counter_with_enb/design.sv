// Code your design here
/////PARAMETRIZED MOD COUNTER///
/*
module modNparameterized_counter_up #(parameter N = 4)
(clk, rst, count);

  input clk, rst;
  output [($clog2(N)-1):0] count;

  reg [($clog2(N)-1):0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 0;
    else if (temp == N-1)
      temp <= 0;
    else
      temp <= temp + 1'b1;
  end

endmodule

*/

//////////PARAMETERIZED MOD DOWN COUNTER//////////

module modNparameterized_counter_up #(parameter N = 4)
(clk, rst, count);

  input clk, rst;
  output [($clog2(N)-1):0] count;

  reg [($clog2(N)-1):0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 0;
    else if (temp == N-1)
      temp <= 0;
    else
      temp <= temp - 1'b1;
  end

endmodule



///////////PARAMETERIZED MOD COUNTER WITH ENABLE/////////

/*
module modNparameterized_counter_up #(parameter N = 4)(clk, rst,enb, count);
  input clk, rst, enb;
  output[($clog2(N)-1):0]count;
  reg [($clog2(N)-1):0] temp;
  
  assign count = temp;
  
  always@(posedge clk )
    begin
      if(!rst)
        temp<= 0;
     else
          if(temp == N-1)
              temp <= 0;
               else
                 if(enb)
              temp = temp + 1'b1;
        end
endmodule

*/



