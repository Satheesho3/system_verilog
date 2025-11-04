module function_example;
  int a=5,b=10,out;
  function int add(input int x,input int y);
    add=x+y;
  endfunction
  initial begin
    out=add(a,b);
    $display("out=%0d a=%0d b=%0d",out,a,b);
  end
endmodule
