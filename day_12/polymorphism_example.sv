class parent_class;
  int data;
  int id;
  virtual function void display();
    $display("data=%0d id=%0d",data,id);
  endfunction
endclass
class child_a extends parent_class;
   function void display();
    $display("data=%0d id=%0d",data,id);
  endfunction
endclass
class child_b extends parent_class;
   function void display();
    $display("data=%0d id=%0d",data,id);
  endfunction
endclass
class child_c extends parent_class;
   function void display();
    $display("data=%0d id=%0d",data,id);
  endfunction
endclass
module top;
  parent_class p1,p2,p3;
  initial begin
   child_a c1=new();
     child_b c2=new();
     child_c c3=new();
    c1.data=4;
    c1.id=5;
     c2.data=3;
    c2.id=2;
     c3.data=6;
    c3.id=7;
    p1=c1;
    p2=c2;
    p3=c3;
    p1.data=9;
    p1.id=1;
    p1.display();
    p2.display();
    p3.display();
  end
endmodule
    
    
    
