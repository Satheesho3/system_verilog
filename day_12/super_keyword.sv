class parent_class;
  int data;
  function void dis();
    $display("data=%0d",data);
  endfunction
endclass
class child_class extends parent_class;
  int data;
  function void dis();
    super.data=4;
    super.dis();
    $display("data=%0d",data);
  endfunction
endclass
module top;
  
  initial begin
    child_class p;
    p=new();
    p.data=3;
    p.dis();
  end 
endmodule
