module logical_op;
  logic a,b;
  int x;
  initial begin
    a=2;
    b=5;
    x=a->b;
    $display("a=%b,b=%b,a->b=%b",a,b,x);
    x=a<->b;
    $display("a=%b,b=%b,a<->b=%b",a,b,x);
    a=3;
    b=6;
    x=(!a||b);
    $display("a=%b,b=%b,a->b=%b",a,b,x);
    x=a<->b;
    $display("a=%b,b=%b,a<->b=%b",a,b,x);
  end 
endmodule
