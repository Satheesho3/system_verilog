class parent;
  rand bit [7:0]a;
  rand bit [7:0]b;
  constraint range{solve a before b;
                   b inside {[1:a]};}
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(5)begin
      p.randomize();
      $display("a=%0d b=%0d",p.a,p.b);
    end
  end
endmodule
