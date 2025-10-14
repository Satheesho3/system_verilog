module break_continue;
  int a[10];
  initial begin
    foreach(a[i])begin
      a[i]=i+1;
    end
      foreach(a[i])begin
        if(a[i]==5)break;
          $display("a[%d]=%d",i,a[i]);
      end
    foreach(a[i])begin
      if(a[i]==5)continue;
          $display("a[%d]=%d",i,a[i]);
      end
      end
    endmodule
