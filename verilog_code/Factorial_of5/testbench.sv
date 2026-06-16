// Code your testbench here
// or browse Examples
//////////////FACTORIAL OF A NUMBER///////////


module factorial_example_tb;
      int  num;
  // integer result;
    int result;
  
  function integer factorial(input integer n, output result);
    
    integer i;
    begin
      factorial = 1;
      for(i = 1; i<=n; i=i+1)
        factorial = factorial * i;
    end
    endfunction
  initial begin
    num = 5;
    result = factorial(num);
    
    $display("factorial of %0d = %0d", num, result);
  end
endmodule
  
  //assign result = factorial (num);
//endmodule
