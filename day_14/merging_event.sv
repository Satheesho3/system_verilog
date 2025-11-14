module parent;
event e1,e2;
  task parent;
    e2=e1;
    #10;
    ->e2;
    $display("t=%t 1",$time);
  endtask
  task parent_b;
    wait (e1.triggered);
    $display("t=%t 2",$time);
  endtask
  initial begin
    parent;
    parent_b;
  end
endmodule
