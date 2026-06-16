// Code your design here
/*
/////////////SISO RITH SHIFT////////////

module shifting(clk, rst, SI, SO);
  input clk, rst, SI;
  output reg SO;
  
  reg[3:0]mem;
  always @(posedge clk)
    begin
      if(!rst)
        mem<= 4'b0000;
      else
        begin
          mem<={SI, mem[3:1]};
          SO<=mem[0];
        end
    end
endmodule
 

///////////////SISO LEFT SHIFT///////////////

module shifting(clk, rst, SI, SO);
  input clk, rst, SI;
  output reg SO;
  
  reg[3:0]mem;
  always @(posedge clk)
    begin
      if(!rst)
        mem<= 4'b0000;
      else
        begin
          mem<={mem[2:0], SI};
          SO<=mem[3];
        end
    end
endmodule
*/

///////////////SISO RIGHT OR LEFT SHIFT/////////////

module shifting(clk, rst, dir, SI, SO);
  input clk, rst, dir, SI;
  output reg SO;

  reg [3:0] mem;

  always @(posedge clk)
  begin
    if (!rst) begin
      mem <= 4'b0000;
      SO  <= 0;
    end
    else begin
      if (dir) begin   // RIGHT SHIFT
        mem <= {SI, mem[3:1]};
        SO  <= mem[0];
      end
      else begin       // LEFT SHIFT
        mem <= {mem[2:0], SI};
        SO  <= mem[3];
      end
    end
  end

endmodule