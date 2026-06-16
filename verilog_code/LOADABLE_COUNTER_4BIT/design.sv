// Code your design here
//////LOADEDABLE COUNTER ///////////



module load_counter(clk, rst, load, data, count);

  input clk, rst, load;
  input [3:0] data;
  output [3:0] count;

  reg [3:0] temp;

  assign count = temp;

  always @(posedge clk)
  begin
    if (!rst)
      temp <= 4'b0000;
    else if (load)
      temp <= data;
    else
      temp <= temp + 1;
  end

endmodule