// Code your testbench here
// or browse Examples
module mux_5to1_tb;

reg  [4:0] I;
reg  [2:0] S;
wire Y;

// DUT
mux_5to1 dut (I, S, Y);

// Monitor
initial begin
  $monitor("Time=%0t I=%b S=%b Y=%b", $time, I, S, Y);
end

// Stimulus
initial begin
  I = 5'b10101;

  S = 3'b000; #10;  // I[0]
  S = 3'b001; #10;  // I[1]
  S = 3'b010; #10;  // I[2]
  S = 3'b011; #10;  // I[3]
  S = 3'b100; #10;  // I[4]

  // Invalid select (tricky case)
  S = 3'b101; #10;
  S = 3'b110; #10;
  S = 3'b111; #10;

  // Change input
  I = 5'b11010;
  S = 3'b010; #10;

  $finish;
end

// VCD
initial begin
  $dumpfile("mux_5to1.vcd");
  $dumpvars(0, mux_5to1_tb);
end

endmodule