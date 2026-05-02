///KIRAN GORAJANAL
//KVLSI2601039

`include "mux2_1.sv"

module mux4_1(i0, i1, i2, i3, s0, s1, y);

  input i0, i1, i2, i3, s1, s0;
  output y;

  wire w1, w2;

  // Instantiation
  mux2_1 m1(i0, i1, s0, w1);
  mux2_1 m2(i2, i3, s0, w2);
  mux2_1 m3(w1, w2, s1, y);

endmodule















