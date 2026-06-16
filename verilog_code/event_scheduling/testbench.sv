// Code your testbench here
// or browse Examples
/*

module test;
  integer a, b;
  initial begin
   #2 a = 5; b = 6;
    $display ("simtime=%0t, a=%0d, b=%0d",$time, a, b);
    $strobe("simtime=%0t, a=%0d, b=%0d", $time, a, b);
    a<=10;
  end
endmodule


module test;
  integer a, b, c, d;
  initial begin
    a = 6;
    $display($time, a, b, c, d);
             b = 12;
    $display($time, a, b, c, d);
  end
  initial begin
    c = 7;
    $display($time, a, b, c, d);
    d = 15;
    $display($time, a, b, c, d);
  end
endmodule


module test;
  integer a, b, c, d;
  initial begin
       a = 6;
    $strobe($time, a, b, c, d);
             b = 12;
    $strobe($time, a, b, c, d);
  end
  initial begin
    c = 7;
    $strobe($time, a, b, c, d);
    d = 15;
    $strobe($time, a, b, c, d);
  end
endmodule




module test;
  integer a, b, c, d;
  initial begin
       a <= 6;
    $display($time, a, b, c, d);
             b <= 12;
    $display($time, a, b, c, d);
  end
  initial begin
    c <= 7;
    $display($time, a, b, c, d);
    d <= 15;
    $display($time, a, b, c, d);
  end
endmodule


    module test;
  integer a, b, c, d;
  initial begin
    a = 6;
    $display($time, a, b, c, d);
            #5 b = 6;
    $display($time, a, b, c, d);
  end
  initial begin
   #2 c = 10;
    $display($time, a, b, c, d);
    #1 d = 12;
    $display($time, a, b, c, d);
  end
endmodule


module test;
  integer a;
  initial begin
    a = 10;
    $strobe(" @@@ a=%0d", a);
    #1  $display(" *** a=%0d", a);
    a<=1;
  end
endmodule


module test;
  integer a = 5;
  initial begin
    $strobe ("@@@ a= %0d", a);
    a<=10;
    $display("*** a= %0d", a);
  end
  endmodule */

module test;
  reg[7:0]a, b, c, d, e;
  initial begin
    a<=8'h12;
    $display("%0t,%h, %h, %h", $time, a, b, c);
    b<=8'h34;
    $display("%0t, %h, %h, %h", $time, a, b, c);
    c<=8'h67;
    $display("%0t, %h, %h, %h", $time, a, b, c);
  end
  initial begin
    #1 d<=8'h12;
    $display($time, d, e);
    #1 e<=8'h34;
    $display($time, d, e);
    #1a<=8'h10;
    $display($time, a, d, e);
  end
  endmodule