class parent;
  rand bit [7:0]a;
  rand bit sel;
  constraint range{a==b(sel);}
  function bit [7:0]b(bit sel);
    return (sel?10:20);
  endfunction
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
