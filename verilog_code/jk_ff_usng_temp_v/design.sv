// Code your design here
 module jk_flipflop(j,k,clk,rst,Qfs, Qfas);
  
   input j,k,clk,rst;
   output Qfs,Qfas;
   //reg temp_s,temp_as;
   reg tempf_s,tempf_as;
  
  // assign Qs= temp_s;
   //assign Qas= temp_as;
   assign Qfs= tempf_s;
   assign Qfas= tempf_as;
  
      // Sysnchronous RESET
  
   always@(posedge clk)
     begin
       if(!rst)
         tempf_s<=0;
       else
         if(j==1'b1 && k== 1'b1)
           tempf_s<= ~tempf_s;
       else
         if(j==1'b1 && k== 1'b0)
           tempf_s<=1'b1;
       else
         if(j==1'b0 && k== 1'b1)
           tempf_s<=1'b0;
    end
   
   // Asysnchronous RESET
  
   always@(posedge clk or negedge rst)
     begin
       if(!rst)
         tempf_as<=0;
       else
         if(j==1'b1 && k== 1'b1)
           tempf_as<= ~tempf_as;
       else
         if(j==1'b1 && k== 1'b0)
           tempf_as<=1'b1;
       else
         if(j==1'b0 && k== 1'b1)
           tempf_as<=1'b0;
     end
 endmodule

