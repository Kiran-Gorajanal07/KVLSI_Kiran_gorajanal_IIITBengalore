// Code your testbench here
// or browse Examples
///
module load_counter_tb;

  reg clk, rst, load;
  reg [3:0] data;
  wire [3:0] count;

  load_counter dut(clk, rst, load, data, count);

  initial begin
    clk = 0;
    rst = 0;
    load = 0;
    data = 4'b0000;

    #10 rst = 1;

    
    #20;

    
    load = 1; data = 4'b1010; #10;

   
    load = 0; #40;

    
    load = 1; data = 4'b0011; #10;

    load = 0; #30;

    #20 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("time=%0t | load=%b data=%b count=%b",
              $time, load, data, count);
    $dumpfile("load_counter.vcd");
    $dumpvars(0, load_counter_tb);
  end

endmodule