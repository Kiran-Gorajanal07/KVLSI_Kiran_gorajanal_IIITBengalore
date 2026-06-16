//lower module
//Kiran Gorajanal

module decoder2_4(A1, A0, E, D);
  input A1, A0;
  input E;
  output[3:0]D;
  
  assign D[0] = E &(~A1&~A0);
  assign D[1] = E &(~A1&A0);
  assign D[2] = E &(A1&~A0);
  assign D[3] = E &(A1&A0);
  
endmodule
  