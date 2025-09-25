module array_locator;
  int a[];
  initial begin
     a=new[6];
    a='{7,5,8,4,5,3};
    
    $display("find=%0p",a.find  with(item==8));    
    $display("find_first=%0p",a.find_first with(item==7));
    $display("find_last=%0p",a.find_last with (item==3));
    $display("unique=%0p",a.unique ());
    $display("min=%0p",a.min());
    $display("max=%0p",a.max());
  end
endmodule
