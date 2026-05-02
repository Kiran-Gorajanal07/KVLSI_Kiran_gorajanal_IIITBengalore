// Code your design here
//Parameterized Multiplexer design 
//Kiran Gorajanal
/*
module mux_generic #(parameter N = 4) (I,s, y);
  input[N-1:0]I;
  input[($clog2(N)-1):0]s;
  output y;
  assign y = I[s];
endmodule*/

module mux_generic #(parameter N = 4) (I,s, y);
  input[N-1:0]I;
  input[($clog2(N)-1):0]s;
  output reg y;
  
  always @(I, s)
    begin
        y = I[s];
    end
  
endmodule
