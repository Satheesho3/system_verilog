module void_function;
  function void add(input int x,input int y);
    int add;
    add=x+y;
    $display("add=%0d x=%0d y=%0d",add,x,y);
  endfunction
  initial begin
    add(5,6);
  end
endmodule
