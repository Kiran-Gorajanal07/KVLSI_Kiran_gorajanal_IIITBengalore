// Code your design here
///KIRAN GORAJNAL


///////////////mod -100 updown//////////

	
module mod100_counter_up_down(clk, rst,dir,  count);
  input clk, rst;
  input dir;
  output [6:0]count;
  reg [6:0]temp;
  
  assign count = temp;
  
  always @(posedge clk)
    begin
      if(!rst)
        temp<=7'd0;
      else 
        if(dir)
          temp<=temp+1;
      else
        temp<=temp-1;
      
    end
endmodule

