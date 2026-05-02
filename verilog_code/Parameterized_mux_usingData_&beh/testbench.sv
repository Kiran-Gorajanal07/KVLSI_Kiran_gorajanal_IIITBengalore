// Code your testbench here
// or browse Examples
//Parameterized Multiplexer Design

module mux_generic_tb;
  reg [dut.N-1:0]I;
  reg[($clog2(dut.N)-1):0]s;
  wire y;
  
  //defparam dut.N =8;
  mux_generic  #(16) dut(I, s, y);
  initial begin
    repeat(10)
      begin
        I = $random;
        s = $random;
        #2;
      end
  end
  initial begin 
    $monitor("sim time=%0t, I=&b, s=%b, y=%b", $time, I, s, y);
  end
endmodule
