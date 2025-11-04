module pass_value_func;
  int a=5,b=10,out;
  function int add(input int x,input int y);
    x=x+20;
    y=y+10;
    add=x+y;
  endfunction
  initial begin
    out=add(a,b);
    $display("out=%0d",out);
  end
endmodule
  
