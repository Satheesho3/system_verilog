/ Code your design here
module for_loop;
  int i;
  initial begin
    for(i=0;i<=5;i++)
      $display("i=%0d",i);
  end
endmodule
