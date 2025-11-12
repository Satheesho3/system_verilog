class parent_class;
  int data;
  virtual function void display();
    $display("data=%0d ",data,);
  endfunction
endclass
class child extends parent_class;
  int id;
  function void display() ;
    super.display();
     $display(" id=%0d",id);
  endfunction
endclass
module top;
  child c;
  initial begin
    c=new();
    c.data=4;
    c.id=3;
    c.display();
  end
endmodule
