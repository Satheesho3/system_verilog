class parent_class;
  int data;
  function void display();
    $display("data=%0d",data);
    endfunction
endclass
class child_class extends parent_class ;
  int id;
  function void display_c();
    $display("id=%0d",id);
    endfunction
endclass
module top;
  
  initial begin
    child_class p;
    p=new();
    p.data=12;
    p.id=1;
    p.display();
    p.display_c();
  end 
endmodule
