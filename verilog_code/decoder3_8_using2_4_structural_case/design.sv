// Code your design here
//Top module
//Kiran Gorajanal

/*
`include "decoder2_4.sv"
module decoder3_8(A, D);
  input[2:0]A;
  output[7:0]D;
  
  wire[3:0] d_loww, d_high;
  
  decoder2_4 dec1 (.A1(A[1]), .A0(A[0]), .E(~A[2]), .D(d_low) );
  decoder2_4 dec2 ( .A1(A[1]), .A0(A[0]), .E(A[2]), .D(d_high));

  
   assign D[3:0] = d_low;
  assign D[7:4] = d_high;

endmodule

*/

module decoder3_8(A, D);

  input [2:0] A;
  output reg [7:0] D;

  always @(*) begin
    case (A)
      3'b000: D = 8'b00000001;
      3'b001: D = 8'b00000010;
      3'b010: D = 8'b00000100;
      3'b011: D = 8'b00001000;
      3'b100: D = 8'b00010000;
      3'b101: D = 8'b00100000;
      3'b110: D = 8'b01000000;
      3'b111: D = 8'b10000000;
      default: D = 8'b00000000;
    endcase
  end

endmodule