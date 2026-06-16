// Code your design here
//KIRAN GORAJANAL
//KVLSI2601039

////////////PIPO SHIGTING RIGHT//////////
module pipo_shifting(clk, rst, pi, po);

  input clk, rst;
  input [3:0] pi;
  output reg [3:0] po;

  reg [3:0] mem;

  always @(posedge clk)
  begin
    if (!rst) begin
      mem <= 4'b0000;
      po  <= 4'b0000;
    end
    else begin
      mem <= pi;
      po  <= mem;
    end
  end

endmodule