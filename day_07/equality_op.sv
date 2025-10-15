module equality_op;
  int a=5,b=5;
  initial begin
    if(a==b)
      $display("equal");
    else
      $display("not equal");
  end 
endmodule
