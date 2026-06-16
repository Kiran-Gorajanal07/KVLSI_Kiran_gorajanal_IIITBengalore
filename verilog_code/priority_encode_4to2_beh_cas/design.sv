// Code your design here
//encoder4nit_2bit_priority
//Kiran Gorajanal

/*

module priority_encoder_4to2(I, y);
  input [3:0]I;
  output reg [1:0]y;
              
           /*   always @(I)
                begin
                  y = (I[3])?2'b11:
                   (I[2])?2'b10:
                   (I[1])?2'b01:
                   (I[0])?2'b00:
                  
                  2'b00;
                end
  
  always @(I)
    begin
    y = (I[3]) ? 2'b11 :
        (I[2]) ? 2'b10 :
        (I[1]) ? 2'b01 :
        (I[0]) ? 2'b00 :
                 2'b00;
  end
            
endmodule
*/


module priority_encoder_4to2(I, y);

  input [3:0] I;
  output reg [1:0] y;

  always @(*) begin
    casez (I) 

      4'b1???: y = 2'b11;  // I3 highest
      4'b01??: y = 2'b10;
      4'b001?: y = 2'b01;
      4'b0001: y = 2'b00;

      default: y = 2'b00;

    endcase
  end

endmodule
              
          