class class_A;
  int data;
  function new(int d);
    data=d;
  endfunction
  function void display();
    $display("data=%0d",data);
  endfunction
endclass
  class class_B;
    class_A a;
    int out;
    function new(int o);
      a=new(50);
      out=o;
    endfunction
    function void show();
      $display("out=%0d",out);
      a.display();
    endfunction
  endclass
    module top;
      initial begin
      class_B b;
      b=new(100);
        b.show();
      end
    endmodule
