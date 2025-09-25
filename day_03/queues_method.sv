module queues_meth;
  int a[$]={1,2,3,4,5,6};
  int x;
  initial begin
    x=a.size();
      $display("size=%0d",x);
     a.insert(2,8);
    $display("after insert=%0p",a);
    a.delete(3);
    $display("after delete=%0p",a);
  end
endmodule
