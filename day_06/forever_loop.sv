module forever_loop;
  bit clk;
  initial begin
    clk=0;
    forever begin
      #10;clk=!clk;
      $display("clk=%0d,time=%0t",clk,$time);
    end
  end
  initial begin
  #60;$finish;
  end
endmodule
