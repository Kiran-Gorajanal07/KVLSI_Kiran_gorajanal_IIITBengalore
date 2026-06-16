// Code your design here
// Code your design here
   module    jklatch(j,k,clk,rst,Qs,Qas);
  
 input j,k,clk,rst;
   output Qs,Qas ;
   reg temp_s,temp_as;
     //tempf_s,tempf_as;
  
   assign Qs= temp_s;
   assign Qas= temp_as;
  // assign Qfs= tempf_s;
  // assign Qfas= tempf_as;
  
//   ///////////// LATCHES/////////////////////
//   // Synhchronous Model
  
  always @(clk,rst,j,k)
     begin
       if(clk)
         if(!rst)
           temp_s<= 0;
       else
         if(j==1'b1 && k== 1'b1)
           temp_s<= ~temp_s;
       else
         if(j==1'b1 && k== 1'b0)
           temp_s<=1'b1;
       else
         if(j==1'b0 && k== 1'b1)
           temp_s<=1'b0;
     end
 
//   // Asynhchronous Model
  
   always @(clk,rst,j,k)
     begin
       if(!rst)
           temp_as<= 0;
       else
         if(clk)        
              if(j==1'b1 && k== 1'b1)
           temp_as<= ~temp_as;
       else
         if(j==1'b1 && k== 1'b0)
           temp_as<=1'b1;
       else
         if(j==1'b0 && k== 1'b1)
          temp_as<=1'b0;
     end
   endmodule
  
  