// Code your design here
////////////// SYNCHRONOUS + ASYNCHRONOUS T FLIP-FLOP //////////////////

module t_flipflop (clk, rst, T, Qsynch, Qasynch);

  input clk, rst, T;
  output Qsynch, Qasynch;
  reg tempf_s, tempf_as;
  

  assign  Qsynch = tempf_s;
 assign  Qasynch = tempf_as;
  

  //////// SYNCHRONOUS RESET ////////
  always @(posedge clk)
  begin
    if (!rst)           // synchronous reset
      tempf_s <= 0;
    else
      if (T)
        tempf_s <= ~Qsynch;
      else
        tempf_s <= Qsynch;   // hold
  end


  //////// ASYNCHRONOUS RESET ////////
  always @(posedge clk or negedge rst)
  begin
    if (!rst)           // asynchronous reset
      tempf_as <= 0;
    else
      if (T)
        tempf_as <= ~Qasynch;
      else
        tempf_as <= Qasynch; // hold
  end

endmodule