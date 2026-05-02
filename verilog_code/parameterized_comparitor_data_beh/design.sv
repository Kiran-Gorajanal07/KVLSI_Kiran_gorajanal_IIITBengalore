// Code your design here
//parameterized comparitor
//Kiran Gorajanal
/*
module comparator #(parameter N = 4) (A, B, gt, lt, eq);

  input  [N-1:0] A, B;
  
  output gt, lt, eq;

  assign gt = (A > B);
  assign lt = (A < B);
  assign eq = (A == B);

endmodule



module comparator #(parameter N = 4) (A, B, gt, lt, eq);

  input  [N-1:0] A, B;
  output reg gt, lt, eq;

  always @(A, B)
    begin
      
      gt = (A > B);
      lt = (A < B);
      eq = (A == B);
    end
  

endmodule*/


module comparator #(parameter N = 4) (A, B, gt, lt, eq);

  input  [N-1:0] A, B;
  output reg gt, lt, eq;

  always @(A, B)
    begin
      if (A > B)
      {gt, lt, eq} = 3'b100;
      else
        if(A < B)
      {gt, lt, eq} = 3'b010;
      else
      {gt, lt, eq} = 3'b001;
    end
endmodule



