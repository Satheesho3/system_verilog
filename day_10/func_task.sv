module func_task;
  function int add(input int x,y);
    add=x+y;
    endfunction
  task  add_1(input int a,b);
              int out;
    out=add(a,b);
    $display("out=%0d a=%0d b=%0d",out,a,b);
  endtask
  initial begin
    #2;
    add_1(3,7);
    add_1(4,6);
  end
endmodule
