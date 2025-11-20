class parent;
  rand bit [7:0]a;
  rand enum {high,low}b;
  constraint range{if (b==high)
    a<50;
                   else
                     a>50;}
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
