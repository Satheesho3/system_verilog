virtual class parent_class;
  int data;
endclass
class child_class extends parent_class;
  function void display();
    $display("data=%0d",data);
  endfunction
endclass
module top;
  child_class p;
  initial begin
    p=new();
    p.data=4;
    p.display();
  end
endmodule
