// Code your design here
//kiran Gorajanal
////////////////////ring counter SISO////////////
/*
module shifting(clk, rst, count);

  input clk, rst;
  output [3:0] count;

  reg [3:0] mem;

  assign count = mem;

  always @(posedge clk)
  begin
    if (!rst)
      mem <= 4'b1000;              
    else
      mem <= {mem[0], mem[3:1]};  
  end

endmodule
      
 
//////////////////JHONSON COUNTER//////////

module shifting(clk, rst, count);

  input clk, rst;
  output [3:0] count;

  reg [3:0] mem;

  assign count = mem;

  always @(posedge clk)
  begin
    if (!rst)
      mem <= 4'b1000;              
    else
      mem <= {~mem[0], mem[3:1]};  
  end

endmodule*/  

/////////////////LFSR/////////////////


module shifting(clk, rst, count);

  input clk, rst;
  output [3:0] count;

  reg [3:0] mem;

  assign count = mem;

  always @(posedge clk)
  begin
    if (!rst)
      mem <= 4'b1000;              
    else
      mem <= {(mem[1] ^ mem[0]), mem[3:1]};  
  end

endmodule
      
      
      
      	