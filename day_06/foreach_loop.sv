module foreach_loop;
  bit [2:0][1:0][7:0]a;
  initial begin
    a=48'habcd_fcda_1234;
    foreach(a[i])begin
      $display("a[%0d]=%0h",i,a[i]);
      foreach(a[i,j])begin
        $display("a[%0d][%0d]=%0h",i,j,a[i][j]);
      end
    end
  end
endmodule
