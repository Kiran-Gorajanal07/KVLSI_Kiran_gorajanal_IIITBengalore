// Code your design here
//Kiran Gorajanal
/*module mux_5to1 (
  input  [4:0] I,
  input  [2:0] S,
  output Y
);

assign Y = (S == 3'b000) ? I[0] :
           (S == 3'b001) ? I[1] :
           (S == 3'b010) ? I[2] :
           (S == 3'b011) ? I[3] :
           (S == 3'b100) ? I[4] :
                           1'b0;   // default case

endmodule
*/

module mux_5to1 (
  input  [4:0] I,
  input  [2:0] S,
  output Y
);

assign Y = S[2] ? 
              (S[1] ? 1'b0 : (S[0] ? I[4] : I[3])) 
            : 
              (S[1] ? (S[0] ? I[2] : I[1]) 
                    : (S[0] ? I[0] : I[0]));

endmodule