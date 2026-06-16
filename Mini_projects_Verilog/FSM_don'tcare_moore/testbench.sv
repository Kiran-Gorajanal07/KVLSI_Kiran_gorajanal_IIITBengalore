// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module moore_1x1_over_tb;


// INPUTS

reg clk;
reg rst;
reg seq_in;



wire det_out;


moore_1x1_over dut(
    .clk(clk),
    .rst(rst),
    .seq_in(seq_in),
    .det_out(det_out)
);

//////////////////////////////////////////////////
// CLOCK GENERATION
//////////////////////////////////////////////////

always #5 clk = ~clk;

//////////////////////////////////////////////////
// TEST SEQUENCE


initial
begin

    // INITIAL VALUES
    

    clk = 0;
    rst = 0;
    seq_in = 0;

    // RESET
    

    #10 rst = 1;

    
    // INPUT SEQUENCE
    // Sequence Applied : 1 0 1 1 0 1 0 1

    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;

    
    // EXTRA TEST
    //////////////////////////////////////////////

    #10 seq_in = 1;
    #10 seq_in = 1;
    #10 seq_in = 0;
    #10 seq_in = 1;

    
    // FINISH
    //////////////////////////////////////////////

    #50;
    $finish;

end

// MONITOR


initial
begin

    $monitor("TIME=%0t | rst=%b | seq_in=%b | det_out=%b",
              $time, rst, seq_in, det_out);

end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, moore_1x1_over_tb);
  end
  

endmodule