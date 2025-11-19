class parent;
  rand bit [3:0]a;
  constraint b{a>5;};
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(10)begin
      p.randomize();
      $display("a=%0d",p.a);
    end
  end
endmodule
