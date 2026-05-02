// Code your design here
//Generic adder desing orparameterized design
//Kiran gorjanal
/*
module nbitadder #(parameter N = 4)(a, b, c, sum, carry);
  input[N-1:0]a, b;
  input c;
  output[N-1:0]sum;
 output carry;
  
  assign {carry, sum} = a + b + c;
endmodule*/

module nbitadder #(parameter N = 4)(a, b, c, sum, carry);
  input[N-1:0]a, b;
  input c;
  output reg[N-1:0]sum;
 output reg carry;
  
  always @(a,b,c)
    begin
   {carry, sum} = a + b + c;
    end
  
endmodule