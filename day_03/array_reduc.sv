module array_reduc;
  int a[];
  initial begin
    a=new[5];
    a='{1,2,3,4,5};
    $display("sum=%d",a.sum());
    $display("product=%d",a.product());
    $display("and=%d",a.and());
    $display("or=%d",a.or());
    $display("xor=%d",a.xor());
  end
endmodule
