// Code your design here
//KIRAN GORAJANAL 
//KVLSI2601039

//////////FSM MOORE OVERLAPPING 1010///////////
module moore_1010_over(clk, rst, seq_in, det_out);

  input clk, rst, seq_in;
  output reg det_out;

  reg [2:0] ps, ns;

  parameter idle = 3'b000;
  parameter s1   = 3'b001;
  parameter s2   = 3'b010;
  parameter s3   = 3'b011;
  parameter s4   = 3'b100;

  always @(posedge clk or negedge rst)
  begin
    if(!rst)
      ps <= idle;
    else
      ps <= ns;
  end

  always @(ps, seq_in)
  begin
    case(ps)

      idle : begin
        det_out = 0;
        if(seq_in)
          ns = s1;
        else
          ns = idle;
      end

      s1 : begin
        det_out = 0;
        if(seq_in)
          ns = s1;
        else
          ns = s2;
      end

      s2 : begin
        det_out = 0;
        if(seq_in)
          ns = s3;
        else
          ns = idle;
      end

      s3 : begin
        det_out = 0;
        if(seq_in)
          ns = s1;
        else
          ns = s4;
      end

      s4 : begin
        det_out = 1;
        if(seq_in)
          ns = s3;
        else
          ns = idle;
      end

      default : begin
        ns = idle;
        det_out = 0;
      end

    endcase
  end

endmodule