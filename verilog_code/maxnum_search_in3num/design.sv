// Code your design here
module max_num_search(A, B, C, max);
  input[3:0] A, B, C;
  output reg[3:0] max;
  
  always @(A, B, C)
    begin
      if (A>B  && A>>C)
        max = A;
      else
        if(B>A && B>>C)
          max = B;
      else
        max = C;
    end
endmodule
