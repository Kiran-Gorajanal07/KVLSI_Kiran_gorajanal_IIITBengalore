// Code your testbench here
// or browse Examples
//Kiran Gorajanal
/*
module pop_count_tb;
  reg[3:0] a;
  wire[2:0] count;
  
  pop_count dut(a, count);
  initial begin
    a[0]=0;a[1]=0;a[2]=0;a[3]=0;
        #10    a[0]=0;a[1]=0;a[2]=0;a[3]=1;
    #10    a[0]=0;a[1]=0;a[2]=1;a[3]=0;
    #10    a[0]=0;a[1]=0;a[2]=1;a[3]=1;
    #10    a[0]=1;a[1]=0;a[2]=0;a[3]=1;
    #10    a[0]=1;a[1]=0;a[2]=0;a[3]=1;
    #10    a[0]=1;a[1]=1;a[2]=0;a[3]=0;
    #10    a[0]=1;a[1]=0;a[2]=1;a[3]=1;
  end
  initial begin
    $monitor("Time=%0t  a[0]=%b a[1]=%b a[2]=%b a[3]=%b count=%b", a, count);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, pop_count_tb);
  end
endmodule
*/

module pop_count_tb;

reg [3:0] a;
wire [2:0] count;

// DUT
pop_count dut(a, count);

// Monitor
initial begin
  $monitor("Time=%0t a=%b count=%0d", $time, a, count);
end

// Stimulus (VECTOR STYLE)
initial begin
  a = 4'b0000;
  #10 a = 4'b0001;
  #10 a = 4'b0010;
  #10 a = 4'b0011;
  #10 a = 4'b0101;
  #10 a = 4'b1001;
  #10 a = 4'b1111;
  #10 a = 4'b1011;
  #10 $finish;
end
/*  initial begin
  {a[3],a[2],a[1],a[0]} = 4'b0000;
  #10 {a[3],a[2],a[1],a[0]} = 4'b0001;
  #10 {a[3],a[2],a[1],a[0]} = 4'b0010;
  #10 {a[3],a[2],a[1],a[0]} = 4'b0011;
  #10 {a[3],a[2],a[1],a[0]} = 4'b1001;
  #10 $finish;
end*/

// VCD
initial begin
  $dumpfile("pop_count.vcd");
  $dumpvars(0, pop_count_tb);
end

endmodule