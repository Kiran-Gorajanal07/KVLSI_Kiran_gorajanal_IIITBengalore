// Code your design here
//KVLSI0126039
//Kiran Gorajnal

module pop_count (a, count);
  input  [3:0] a;
  output [2:0] count;


assign count = a[0] + a[1] + a[2] + a[3];

endmodule