// Code your testbench here
// or browse Examples
module test;
  reg[48:1]str;
  initial begin
    str = "SHASHI";
    $display ("string = %s", str);
  end 
endmodule