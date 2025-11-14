module parent;
  event e1,e2,e3;
  task parent_a;
    #10;
    $display("t=%t 1",$time);
    ->e1;
  endtask
    task parent_b;
    #5;
      $display("t=%t 2",$time);
    ->e2;
  endtask
  task parent_c;
    #15;
    $display("t=%t 3",$time);
    ->e3;
  
  endtask
  task parent_d;
    wait_order(e1,e2,e3)
    $display("t=%t order",$time);
    else
      $display("t=%t non order",$time);
  endtask
  initial begin
    fork
    parent_a;
    parent_b;
    parent_c;
      parent_d;
    join
  end
endmodule
