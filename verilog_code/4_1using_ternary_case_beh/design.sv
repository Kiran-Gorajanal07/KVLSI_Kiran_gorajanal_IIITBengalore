// Code your design here
//Kiran Gorajanal
/*
module mux4_1 (
    input  [3:0] I,
    input  [1:0] S,
    output Y
);

assign Y = S[1] ? (S[0] ? I[3] : I[2]) 
                : (S[0] ? I[1] : I[0]);

endmodule



//using case-statement

module mux4_1(I, S, Y);
  input[3:0]I;
  input[1:0]S;
  output reg Y;
  
  always @(I, S)
    begin
      case(S)
        2'b00 : Y = I[0];
        2'b01 : Y = I[1];
        2'b10 : Y = I[2];
        2'b11 : Y = I[3];
        default : Y = 1'bx;
      endcase
    end
endmodule */

//uisng if-else

module mux4_1(I, S, Y);
  input[3:0]I;
  input[1:0]S;
  output reg Y;
  
  always @(I, S)
    begin
      
      if(S == 1'b00)
      Y = I[0];
      else
        if(S == 1'b01)
      Y = I[1];
      else
        if(S == 1'b10)
          
      Y = I[2];
      else
        Y = I[3];
    end
endmodule
        