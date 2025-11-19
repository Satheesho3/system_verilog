class parent;
  randc bit [1:0]a;
 
endclass
module top;
  parent r;
  initial begin
    r=new();
    repeat(10)begin
    r.randomize();
      $display(" a=%0d ",r.a);
    end
  end
endmodule
    
