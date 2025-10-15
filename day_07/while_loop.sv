module while_loop;
  int i;
  initial begin
    i=2;
    while(i<=5)begin
     $display("iterated valueof i=%0d",i);
      i++;
    end
  end
endmodule
