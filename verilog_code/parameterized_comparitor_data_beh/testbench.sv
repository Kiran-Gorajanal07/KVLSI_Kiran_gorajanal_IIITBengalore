// Code your testbench here
// or browse Examples

module comparator_tb;

  reg [dut.N-1:0] A, B;
  wire gt, lt, eq;

  //comparator #(4) dut(A, B, gt, lt, eq);
  defparam dut.N=16;
   comparator  dut(A, B, gt, lt, eq);

  initial begin
    repeat(40)
    begin
      {A, B}= $random;
      //B = $random;
      #2;
    end
  end

  initial begin
    $monitor("time=%0t A=%b B=%b gt=%b lt=%b eq=%b",
              $time, A, B, gt, lt, eq);
  end

endmodule