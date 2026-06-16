// Code your testbench here
// or browse Examples
module decoder3_8_tb;

  reg  [2:0] A;
  wire [7:0] D;

  integer i;

  
  decoder3_8 dut (A, D);

  initial begin
   
    for(i = 0; i < 2**3; i = i + 1)
    begin
      A = i;   
      #5;
    end
  end


  initial begin
    $monitor("Time=%0t | A=%b | D=%b",
              $time, A, D);
  end


  initial begin
    $dumpfile("decoder3_8.vcd");
    $dumpvars(0, decoder3_8_tb);
  end

endmodule