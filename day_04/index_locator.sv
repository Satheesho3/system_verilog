module index_locator;
  int a[];
 
  initial begin
    a=new[8];
    a='{4,2,5,7,2,4,6,7};
    $display("find_index =%0p",a.find_index with(item<5));
    $display("find_first_index =%0p",a.find_first_index with(item<6));
    $display("find_last_index =%0p",a.find_last_index with(item<5));
    $display("unique_index =%0p",a.unique_index ());
    $display("min =%0p",a.min ());
    $display("max =%0p",a.max ());
  end
endmodule
