class parent_class;
  int data;
  int id;
  virtual function void display();
    $display("data=%0d id=%0d",data,id);
  endfunction
endclass
class child_a extends parent_class;
  function void display() ;
     $display("data=%0d id=%0d",data,id);
  endfunction
endclass
class child_b extends parent_class;
  function void display() ;
     $display("data=%0d id=%0d",data,id);
  endfunction
endclass
module top;
  parent_class p;
  child_a a;
  child_b b;
  initial begin
    p=new();
    p.data=1;
    p.id=2;
    p.display();
     a=new();
    a.data=3;
    a.id=4;
    a.display();
     b=new();
    b.data=6;
    b.id=5;
    b.display();
  end
endmodule
