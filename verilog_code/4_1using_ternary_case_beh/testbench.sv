// Code your testbench here
// or browse Examples
module tb_mux4;

reg [3:0] I;
reg [1:0] S;
wire Y;

mux4_1 dut(I, S, Y);

initial begin
    $monitor("I=%b S=%b | Y=%b", I, S, Y);

    I = 4'b1010;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    #10 $finish;
end

endmodule