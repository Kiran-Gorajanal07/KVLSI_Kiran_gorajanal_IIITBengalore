// Code your testbench here
// or browse Examples
module shifting_tb;

  reg clk, rst, dir, SI;
  wire SO;

  shifting dut(clk, rst, dir, SI, SO);

  initial begin
    clk = 0;
    rst = 0;
    dir = 1;   
    SI  = 0;

    #10 rst = 1;

    
    #5  SI = 1;
    #10 SI = 0;
    #10 SI = 1;
    #10 SI = 1;

  
    #10 dir = 0;

    #10 SI = 0;
    #10 SI = 1;
    #10 SI = 0;
    #10 SI = 1;

    #50 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | dir=%b SI=%b SO=%b", $time, dir, SI, SO);
    $dumpfile("shift.vcd");
    $dumpvars(0, shifting_tb);
  end

endmodule