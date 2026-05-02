// Code your testbench here
// or browse Examples
//Kiran gorajanal
/*

module prime_number_tb;
  reg a, b, c;
  wire prime;
  prime_number dut(a, b, c, prime);
  initial begin
    a=0; b=0; c=0;
    #10 a=0;b=0;c=1;
        #10 a=0;b=1;c=1;
        #10 a=0;b=1;c=1;
        #10 a=1;b=0;c=0;
        #10 a=1;b=0;c=1;
        #10 a=1;b=1;c=0;
        #10 a=1;b=1;c=1;
  end
  initial begin
    $monitor("Time=%0t a=%b b=%b c=%b prime=%d", $time, a, b, c, prime);
    $display("a b c |pr");
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,prime_number_tb);
  end
endmodule

*/

module prime_detector_tb;
  reg A, B, C;
  wire prime;
  
  integer i;
  
  prime_detector dut (A, B, C, prime);
  initial begin
    for(i=0; i<2**3; i=i+1)
      begin
        {A, B, C}=i;
        #2;
      end
  end
  initial begin
    $monitor("Sim time=%0t, A=%b, B=%b, C=%b, prime=&b", $time, A, B, C, prime);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,prime_detector_tb);
  end
endmodule
