// Code your design here
////////SYNCHRONOUS SR LATCH//////////

module srlatch(s, r, clk, rst, Qsynch, Qasynch);
  input s, r, clk, rst;
  output Qsynch, Qasynch;
  reg temp_s, temp_as;
  
  assign Qsynch = temp_s;
  assign Qasynch = temp_as;
  
  ////////ALWAYS BLOCK FOR SYNCHRONOUS////
  
  always@( s, r, clk, rst)
    begin
      if(clk)
        if(!rst)
          temp_s<=0;
      else
        if(s==1'b1 && s== 1'b1)
           temp_s<= 1'bx;
       else
         if(s==1'b1 && r== 1'b0)
           temp_s<=1'b1;
       else
         if(s==1'b0 && r== 1'b1)
           temp_s<=1'b0;
     end
  
  ///////ASYNCHRONOUS SR LATCH//////
  ////===ALWAYS BLOCK OF SR LATCH /////
  
  always@ (s, r, clk, rst)
    begin
      if(!rst)
        temp_as<=0;
      else
        if(clk)
          if(s==1'b1 && r== 1'b1)
           temp_as<= 1'bx;
       else
         if(s==1'b1 && r== 1'b0)
           temp_as<=1'b1;
       else
         if(s==1'b0 && r== 1'b1)
           temp_as<=1'b0;
     end
endmodule
 
 
        