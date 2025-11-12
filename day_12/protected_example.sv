class parent_class;
  int a;
  int b;
  function new();
    a=3;
    b=4;
  endfunction
  protected function void display();
    $display("a=%0d b=%0d",a,b);
  endfunction
endclass
class child_class extends parent_class;
  function void display();
    $display("a=%0d b=%0d",a,b);
  endfunction
endclass
module top;
  child_class c;
  initial begin
    c=new();
    c.display();
  end
endmodule
