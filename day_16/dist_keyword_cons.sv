class parent;
  rand bit [7:0]a;
  rand bit [7:0]b;
  constraint child{a dist{3:=5,[4:8]:=8};}
  constraint child1{b dist{2:/6,[2:5]:/10};}
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(10)begin
      p.randomize();
      $display("a(with :=)=%0d b(with :/)=%0d",p.a,p.b);
    end
  end
endmodule
