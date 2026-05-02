module half_subtractor(a, b, d, bout);

  input a, b;
  output d, bout;

  assign d    = a ^ b;        // Difference
  assign bout = (~a) & b;     // Borrow

endmodule