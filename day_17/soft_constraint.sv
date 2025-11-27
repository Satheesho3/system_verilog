class parent;
  rand bit [7:0]a;
  rand bit [7:0]b;
  constraint range{soft a inside {[20:50]};}
  constraint range1{soft b inside {[60:100]};}
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(5)begin
      p.randomize();
      $display("before:a=%0d b=%0d",p.a,p.b);
      p.randomize() with {a inside {[110:200]};b inside {[220:250]};};
     
      $display("after:a=%0d b=%0d",p.a,p.b);
    end
  end
endmodule
