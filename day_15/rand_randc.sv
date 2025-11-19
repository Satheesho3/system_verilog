class parent;
  rand bit [1:0]a;
  randc bit [1:0]b;
endclass
module top;
  parent r;
  initial begin
    r=new();
    repeat(10)begin
    r.randomize();
      $display(" a=%0d b=%0d ",r.a,r.b);
    end
  end
endmodule
    
