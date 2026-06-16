// Code your design here
///////D- FLIP-FLOP////////


module d_flipflop(d, clk, rst, Qfs, Qfas);
  
  input d, clk, rst;
  output Qfs, Qfas;
  reg tempf_s, tempf_as;
  
  assign Qfs = tempf_s;
  assign Qfas = tempf_as;
  
  ////SYMCHRONOUS RESET/////
   
  always@(posedge clk)
    begin
      if(!rst)
        tempf_s<=0;
      else
        tempf_s<=d;
    end
  /////ASYNCHRONOUS RESET////
    always @(posedge clk or negedge rst)
  begin
    if (!rst)
      tempf_as <= 0;
    else
      tempf_as <= d;
  end
endmodule

  
