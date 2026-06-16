// Code your testbench here
// or browse Examples
module test;

  integer a, b, c, d;

  initial begin
    // initialization
    a = 0;
    b = 1;
    c = 2;
    d = 3;

    // non-blocking assignments
    b <= a;
    c <= b;
    d <= c;
    a <= d;

    // print after scheduling
    #1;
    $strobe("a=%d, b=%d, c=%d, d=%d", a, b, c, d);
  end

endmodule