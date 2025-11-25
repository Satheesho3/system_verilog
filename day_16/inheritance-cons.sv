class parent;
  rand bit [7:0]a,b;
  constraint range{a inside {[1:50]};}
endclass
class child extends parent;
  constraint range{b inside{[51:99]};}
endclass
module top;
  child c;
    parent p;
    initial begin
      p=new();
      repeat(10)begin
        p.randomize();
        $display("a=%0d",p.a);
      end
       c=new();
      repeat(10)begin
        c.randomize();
        $display("b=%0d",c.b);
      end
    end
    endmodule
