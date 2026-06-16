// Code your design here
module sr_ff (
  input clk, rst, S, R,
  output reg Q
);

  always @(posedge clk) begin
    if (!rst)
      Q <= 0;
    else begin
      case ({S, R})
        2'b00: Q <= Q;
        2'b01: Q <= 0;
        2'b10: Q <= 1;
        2'b11: Q <= 1'bx; // invalid
      endcase
    end
  end

endmodule