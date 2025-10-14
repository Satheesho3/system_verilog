module repeat_loop;
  int a[5]='{10,20,30,40,50};
  int i;
  initial begin
    repeat($size(a))begin
      $display("a[%d]=%d",i,a[i]);
      i++;
     
    end
    repeat(4)begin
      $display("satheesh");
    end
  end
    endmodule
