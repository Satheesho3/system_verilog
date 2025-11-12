 class parent_class;
  int data;
   virtual function void display();
     $display("data=%0d",data);
  endfunction
endclass
class child_class extends parent_class;
  int a;
  function void display();
    $display("a=%0d",a);
  endfunction
endclass
module top;
  child_class p;
  initial begin
    p=new();
    p.data=4;
    p.a=5;
    p.display();
  end
endmodule
