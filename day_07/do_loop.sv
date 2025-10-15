module do_loop;
  int i;
  initial begin
    i=0;
   do begin
     $display("iterated valueof i=%0d",i);
      i++;
   end
   while(i<=5);
  end
endmodule
