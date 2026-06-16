// Code your testbench here
// or browse Examples
//priority_ encoder

module priority_encoder_4to2_tb;
  reg [3:0]I;
  wire [1:0]y;
  
  integer i;
  
  priority_encoder_4to2 (I,y);
  initial begin
    for(i=0; i<2**4; i=i+1)
      begin
        I=i;
        #2;
      end
  end
  initial begin
    $monitor("Simtime=%0t, I=%b, y=%b", $time, I, y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, priority_encoder_4to2_tb);
  end
endmodule