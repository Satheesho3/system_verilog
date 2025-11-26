class parent;
  rand bit [7:0]a,b,c,d;
  constraint range{ a>b;
                   c==a-b;
                   d<c;}
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(5)begin
      p.randomize();
      $display("a=%0d b=%0d c=%0d d=%0d",p.a,p.b,p.c,p.d);
    end
  end
endmodule
    
