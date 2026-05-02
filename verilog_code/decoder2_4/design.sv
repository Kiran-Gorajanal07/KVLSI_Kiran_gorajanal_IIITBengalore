// Code your design here
//KVLSI0126039
//Kiran Gorajanal

module dec2_4(a, b, d[0],d[1],d[2],d[3]);
  input a, b;
  output [3:0]d;
  wire w1, w2;
  not n1(w1, a);
  not n2(w2, b);
  and a1(d[0], w1, w2);
  and a2(d[1], w1, b);
  and a3 (d[2],a,w2);
  and a4 (d[3],a,b);
endmodule 
/*
module dec2_4(
input a,b,
output [3:0]d);
assign d[0]= ~a&~b;
assign d[1]= ~a&b;
assign d[2]= a&~b;
assign d[3]= a&b;
endmodule