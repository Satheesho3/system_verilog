  class child;
    int a;
    int b;
    parent p=new();
  function void display();
    $display("a=%0d b=%0d ",a,b);
    $display("c=%0d",p.d);
  endfunction
endclass
  class parent;
    int d=7;
  endclass

module top;
 
 child c;
  initial begin
   
    c=new();
    c.a=2;
    c.b=4;
    c.display();
   
  end 
endmodule
