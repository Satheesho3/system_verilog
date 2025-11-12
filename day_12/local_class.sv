class parent_class;
  local int data;
  function new(int a);
    data=a+5;
  endfunction
  function void display();
    $display("data=%0d",data);
  endfunction
endclass
module top;
  parent_class p;
  initial begin
    p=new(10);
    p.display();
  end 
endmodule
