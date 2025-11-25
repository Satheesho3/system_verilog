class parent;
  rand bit[7:0]a;
  rand bit[7:0]b;
  constraint range{a inside {[1:30]};}
  constraint range1{b inside {20,30,40};}
endclass
module top;
  parent p;
  initial begin
    p=new();
    p.randomize();
    $display("a=%0d b=%0d",p.a,p.b);
    p.rand_mode(0);
     p.randomize();
    $display("a=%0d b=%0d",p.a,p.b);
   p. rand_mode(1);
     p.randomize();
    $display("a=%0d b=%0d",p.a,p.b);
    p.b.rand_mode(0);
     p.randomize();
    $display("a=%0d b=%0d",p.a,p.b);
  end
endmodule
    
