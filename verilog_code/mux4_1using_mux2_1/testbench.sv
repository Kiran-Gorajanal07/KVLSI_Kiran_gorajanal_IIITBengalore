// Code your testbench here
// or browse Examples


module mux4_1_tb;
  
  reg  i0, i1, i2, i3, s1, s0;
  wire y;
  
  integer i;
  
 mux4_1 dut(i0, i1, i2, i3, s1, s0, y);
  
  initial begin
    for(i = 0; i < 2**6; i = i + 1)
    begin
      {i0, i1, i2, i3, s1, s0} = i; 
      #2;
    end
  end
  
  initial begin
    $monitor("Sim time=%0t, i0=%b, i1=%b, i2=%b, i3=%b, s1=%b, s0=%b, y=%b", 
              $time, i0, i1, i2, i3, s1, s0, y);
  end
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0, mux4_1_tb);
  end

endmodule



    