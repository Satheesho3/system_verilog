module ref_function;
  int a,b,out;
  function  automatic int  add(ref int x, ref int y);
    x=x+10;
    y=y+5;
    add=x+y;
  endfunction
  initial begin
    a=10;
    b=20;
    out=add(a,b);
    $display("out=%0d a=%0d b%0d",out,a,b);
    
  end
endmodule
