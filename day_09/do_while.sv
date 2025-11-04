module do_while;
  int count;
  initial begin
    count=0;
    do begin
      count++;
      $display("count=%d",count);
    end
    while(count<10);
  end
endmodule
