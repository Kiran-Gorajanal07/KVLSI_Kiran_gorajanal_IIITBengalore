// Code your testbench here
// or browse Examples
module max_num_search_tb;
  reg[3:0]A, B, C;
  wire[3:0]max;
  
  max_num_search dut(A, B, C, max);
  initial begin
    A = 4'd14; 
    B = 4'd21;
    C = 4'd17;
  end
  initial begin
    $monitor("Sim time=%ot, A=%d, B=%d, C=%d, max=%d",$time, A, B, C,max );
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, max_num_search_tb);
    
  end
endmodule
