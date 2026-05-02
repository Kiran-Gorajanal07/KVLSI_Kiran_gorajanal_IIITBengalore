// Code your testbench here
// or browse Examples
//parameterized adder testbench

  module nbitadder_tb;
    reg[dut.N-1:0]a,b;
    reg c;
    wire[dut.N-1:0]sum;
    wire carry;
   //  parameter overriding1--- nbitadder #(8) dut(a, b, c, sum, carry);
    
    defparam dut.N = 16;
    nbitadder dut(a, b, c, sum, carry);
    initial begin
      repeat(10)
        begin
          a = $random;
          b = $random;
          c = $random;
          #2;
        end
    end
    
    initial begin
      $monitor("Sim time=%0t, a=%b, b=%b, c=%b, sum=%b, carry=%b", $time, a, b, c, sum, carry);
    end

  endmodule