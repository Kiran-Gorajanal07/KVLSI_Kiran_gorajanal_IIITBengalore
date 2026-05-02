// Code your testbench here
// or browse Examples
module mux_8to1_tb;

reg  [7:0] I;
reg  [2:0] S;
wire Y;

// DUT
mux_8to1 dut (I, S, Y);

// Monitor
initial begin
  $monitor("Time=%0t I=%b S=%b Y=%b", $time, I, S, Y);
end

// Stimulus
initial begin
  I = 8'b10101010;

  S = 3'b000; #10;  // Y = I[0]
  S = 3'b001; #10;  // Y = I[1]
  S = 3'b010; #10;  // Y = I[2]
  S = 3'b011; #10;  // Y = I[3]
  S = 3'b100; #10;  // Y = I[4]
  S = 3'b101; #10;  // Y = I[5]
  S = 3'b110; #10;  // Y = I[6]
  S = 3'b111; #10;  // Y = I[7]

  // Change input pattern (tricky case)
  I = 8'b11001100;
  S = 3'b000; #10;
  S = 3'b111; #10;

  $finish;
end

// VCD
initial begin
  $dumpfile("mux_8to1.vcd");
  $dumpvars(0, mux_8to1_tb);
end

endmodule