module for_loop;
  int a[10];
  initial begin
    for(int i=0;i<$size(a);i=i+1)begin
      a[i]=i*i;
    $display("a[%d]=%d",i,a[i]);
    end
  end
endmodule
