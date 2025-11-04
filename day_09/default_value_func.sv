module default_value_func;
  int out1,out2,out3;
  function int add(input int x=50,input int y=20);
    add=x+y;
  endfunction
  initial begin
    out1=add();
    $display("out1=%0d",out1);
    out2=add(20);
    $display("out2=%0d",out2);
    out3=add(10,10);
    $display("out3=%0d",out3); 
  end
endmodule
