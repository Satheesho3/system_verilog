class parent;
  rand bit [7:0]a;
  constraint range{unique {a};}
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(20)begin
      p.randomize();
      $display("a=%0d",p.a);
    end
  end
endmodule
