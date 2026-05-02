// Code your design here
//Kiran Gorajanal

//lower module

module mux2_1(i0, i1, s, y);
  input i0, i1, s;
  output y;
  
assign y = (s) ? i1 : i0;

endmodule

 



