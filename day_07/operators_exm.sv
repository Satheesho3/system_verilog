module operators;
  int a,b,c=2,d=4,e=8;
  initial begin
    a=d++;
    $display("a=%0d",a);
    $display("d=%0d",d);
    d++;
    $display("d=%0d",d);
    b=++d;
    $display("b=%0d",b);
    $display("d=%0d",d);
    c%=d;
    $display("c=%0d",c);
    c>>=1;
    $display("c=%0d",c);
    e%=3;
    $display("e=%0d",e);
    e+=2;
    $display("e=%0d",e);
  end
endmodule
