class parent;
  rand bit[7:0]a;
  randc bit[1:0]b;
  function void pre_randomize();
    $display("a=%0d b=%0d",a,b);
  endfunction
  function void post_randomize();
    $display("a=%0d b=%0d",a,b);
  endfunction
endclass
  module top;
    parent p;
    initial begin
      p=new();
      repeat(10)begin
      p.randomize;
    end
    end
  endmodule
