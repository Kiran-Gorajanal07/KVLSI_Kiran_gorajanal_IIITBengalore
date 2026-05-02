// Code your testbench here
// or browse Examples
//Kiran gorajanal
module cla_4bit_tb;

reg  [3:0] a, b;
reg        cin;
wire [3:0] sum;
wire       cout;

// DUT instantiation
  cla_4bit dut (a,b,cin,sum,cout);

// Monitor
initial begin
  $monitor("Time=%0t a=%b b=%b cin=%b | sum=%b cout=%b",
            $time, a, b, cin, sum, cout);
end

// Stimulus
initial begin
  a=4'b0000; b=4'b0000; cin=0;
  #10 a=4'b0001; b=4'b0010; cin=0;  // 1+2
  #10 a=4'b0101; b=4'b0011; cin=0;  // 5+3
  #10 a=4'b1111; b=4'b0001; cin=0;  // overflow
  #10 a=4'b1010; b=4'b0101; cin=1;  // with carry-in
  #10 a=4'b1111; b=4'b1111; cin=1;  // max case
  #10 $finish;
end

// VCD dump
initial begin
  $dumpfile("cla_4bit.vcd");
  $dumpvars(0, cla_4bit_tb);
end

endmodule