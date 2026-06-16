////////////TESTBENCH FOR 4BIT UPDOWN COUNTER/////////

module counter_4bit_tb;

  reg clk, rst, dir;
  wire [3:0] count;

  counter_4bit dut(clk, rst, dir, count);

  
  initial clk = 0;
  always #5 clk = ~clk;  

 
  initial begin
    rst = 0;
    dir = 1;   

    #10 rst = 1;   

    #50 dir = 0; 

    #50 dir = 1;   

    #50 $finish;
  end

  
  initial begin
    $monitor("time=%0t  rst=%b dir=%b count=%0d",
              $time, rst, dir, count);
  end

 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, counter_4bit_tb);
  end

endmodule