
`include "halfadder.sv"
module full_adder(a, b, cin, sum, carry);

  input a, b, cin;
  output sum, carry;

  wire w1, w2, w3;

  // First Half Adder (positional mapping)
  halfadder h1(a, b, w1, w2);

  // Second Half Adder (named mapping )
  halfadder h2(.a(w1), .b(cin), .s(sum), .c(w3) );

  // Final Carry
  assign carry = w2 | w3;

endmodule