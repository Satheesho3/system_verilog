class parent;
  rand bit [3:0]a,b;
  constraint x{a>5;};
endclass
class child extends parent;
  constraint c{b<5;};
endclass
module top;
  child n;
  parent p;
  initial begin
    p=new();
    n=new();
    repeat(10)begin
      p.randomize();
       $display("a=%0d",p.a);
    end
    repeat(10)begin
      n.randomize();
      $display("b=%0d",n.b);
    end
  end
endmodule
