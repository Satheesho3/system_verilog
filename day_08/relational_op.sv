module relational_op;
  int a,b,c,d;
  bit x;
  initial begin
    a=10;
    b=20;
    c=14;
    d=23;
    x=a<b;
    $display("x=%b",x);
     x=a>b;
    $display("x=%b",x);
     x=c<=d;
    $display("x=%b",x);
      x=c>=d;
    $display("x=%b",x);
  end
endmodule
