module dynamic_size1();
  int array[];
  initial begin
    array='{9,8,7,6,4,3,5};
    $display("size of an array=%0d",array.size());
  end
endmodule
