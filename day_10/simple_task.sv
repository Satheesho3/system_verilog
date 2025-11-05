module simple_task;
  int x,y;
  int z;
  task add(input int a,b,output int out);
    out =a+b;
  endtask
  initial begin
    x=5;
    y=10;
    add(x,y,z);
    $display("x=%0d y=%0d z=%0d",x,y,z);
  end
endmodule
