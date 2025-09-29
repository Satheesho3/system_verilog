module iterator_index;
  int arr[];
  
  initial begin
    arr=new[8];
    arr='{4,5,3,2,6,4,5,2};
    $display("arr=%0p",arr.find_index()with(item==4));
  end
endmodule
