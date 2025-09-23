module dynamic_for();
  int array[];
  initial begin
    array=new[4];
    array='{5,6,7,3};
    foreach (array[i])
      $display("array=%0d",i,array[i]);
  end
endmodule
