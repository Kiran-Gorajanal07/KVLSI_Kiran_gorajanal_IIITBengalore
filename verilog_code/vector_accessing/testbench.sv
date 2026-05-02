// Code your testbench here
// or browse Examples
module tb_vector;

reg [7:0] data;

initial begin
  $monitor("Time=%0t data=%b bit[3]=%b", $time, data, data[3]);
end

initial begin
  data = 8'b10101010;
  #10 data = 8'b11110000;
  #10 data = data + 1;
  #10 $finish;
end

initial begin
  $dumpfile("vector.vcd");
  $dumpvars(0, tb_vector);
end

endmodule