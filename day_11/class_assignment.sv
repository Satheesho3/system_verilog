class object;
  int data;
  
endclass
module top;
  initial begin
  object a,b;
  a=new();
  a.data=50;
  b=a;
  $display("a.data=%0d",a.data);
  $display("b.data=%0d",b.data);
  b.data=30;
    $display("a.data=%0d",a.data);
  $display("b.data=%0d",b.data);
  
  
  end 
endmodule
