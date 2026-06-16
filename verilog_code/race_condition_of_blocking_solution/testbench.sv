// Code your testbench here
// or browse Examples
//RACE CONDITAION DUE TO BLOCKING STATEMENTS AND SOLUTIONS
/* module test;
   integer a=10; b=20;
   
  // a = 10;
   //b = 20;
   
   initial a = b;
   initial b = a;
   
   $display("simtime=%0t, a=%0d, b=%0d", $time, a, b);
            
 endmodule

module test;

  integer a, b;

  initial begin
    a = 10;
    b = 20;
  end

  initial a = b;
  initial b = a;

  initial begin
    #1;
    $monitor("sim_time=%0t, a=%0d, b=%0d", $time, a, b);
    $display("simtime=%0t, a=%0d, b=%0d", $time, a, b);
  end

endmodule



//SOLUTION OF THE AVOIDING RACE CONDTION using #0


module test;

  integer a, b;

  initial begin
    a = 10;
    b = 20;
  end

  initial #0 a = b;   // delayed
  initial     b = a;  // immediate

  initial begin
    #1;
    $display("a=%0d, b=%0d", a, b);
  end

endmodule

 
//SOLUTION USING NON-BLOCKING 



module test;

  integer a, b;

  initial begin
    a = 10;
    b = 20;
  end

  initial  a <= b;   // delayed
  initial  b <= a;  // immediate

  initial begin
    #1;
    $display("a=%0d, b=%0d", a, b);
  end

endmodule
*/

module test;
  integer a, b;
  
  initial begin
     a = 10;
    b = 20;
  end
  initial begin
    a = b;
    b = a;
      $display("a=%0d, b=%0d", a, b);
  end
endmodule
    