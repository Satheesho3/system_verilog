class parent;
  rand bit [7:0]a;
  constraint range{soft a inside {[20:50]};}
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(5)begin
      p.randomize();
      $display("before:a=%0d",p.a);
      p.randomize() with {a inside {[110:200]};};
     
      $display("after:a=%0d",p.a);
    end
  end
endmodule
