module dynamic_del();
  int array[];
  initial begin
    array='{5,4,3,2,1};
    foreach(array[i])
      $display("array=%d",i,array[i]);
    array.delete();
    $display("size of an array=%d",array.size());
  end
endmodule
