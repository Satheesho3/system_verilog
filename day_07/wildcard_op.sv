module wildcard_op;
  logic [15:0]a,b;
  initial begin
    a=16'hff;
    b=16'hfx;
    if(a==?b)
      $display("equal");
    else
      $display("not equal");
  end 
endmodule
