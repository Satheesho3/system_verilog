class parent;
  rand bit [6:0]a;
  rand enum {low,high}b;
  constraint range{(b==low)->a<50;}                  
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(10)begin
    p.randomize();
      $display("b=%0s a= %0d",p.b.name(),p.a);
    end
  end
endmodule
