// Code your testbench here
// or browse Examples
//4-bit adder

module adder_4bit_tb;
  reg[3:0]A, B;
  reg cin;
  wire[3:0]S;
  wire cout;
  
  integer i;
  adder_4bit dut(A, B, cin, S, cout);
  initial begin
    for(i=0; i<2**9; i=i+1)
      begin
        {A, B, cin} = i;
        #5;
      end
  end
  initial begin
    $monitor("Time=%0t, A=%b, B=%b, cin=%b, S=%b, cout=%b", $time, A, B, cin, S, cout);
  end
  initial begin
    $dumpfile("adder_4bit,vcd");
    $dumpvars(0, adder_4bit_tb);
  end
endmodule
