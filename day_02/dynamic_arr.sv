module dynamic_arr();
  int array[];
  initial begin
    array=new[5];
    array='{1,2,3,4,5};
    foreach (array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("size of an array=%0d",array.size());
    array=new[8](array);
    foreach (array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("size of an array=%0d",array.size());
    array=new[6];
    foreach (array[i])
     $display("array[%d]=%d",i,array[i]);
    $display("size of an array=%d",array.size());
    array.delete();
    $display("size of an array=%d",array.size());
  end
  
endmodule
    
    
