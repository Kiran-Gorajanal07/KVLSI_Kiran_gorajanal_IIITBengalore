// Code your design here
//KVLSI2601039
//Kiran Gorajnal
/*
module prime_number(a, b, c, prime);
  input a, b, c;
  output prime;
  wire na, nb, nc;
  wire w1, w2, w3, w4;
  not(na, a);
  not(nb, b);
  not(nc, c);
  and(w1, na, b, nc);
  and(w2, na, b, c);
  and(w3, a, nb, c);
  and(w4, a, b, c);
  or(prime, w1, w2, w3, w4);
endmodule
*/

module prime_detector(A, B, C, prime);
  input A, B, C;
  output reg prime;
  always @(A, B, C)
    begin
      prime =
       ({A, B, C} == 3'b010)? 1:
      ({A, B, C} == 3'b011)? 1:
      ({A, B, C} == 3'b101)? 1:
      ({A, B, C} == 3'b111)? 1:0;
    end
endmodule

  
