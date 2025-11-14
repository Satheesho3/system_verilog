module parent;
  event e1;
  task parent_A();
    
    $display("t=%t 1",$time);
    ->e1;
    $display("t=%t 2",$time);
    
  endtask
  task parent_B();
    #10;$display("t=%t 3",$time);
    wait(e1.triggered);
   #5; $display("t=%t triggered",$time);
  endtask
  initial begin
    fork
    parent_A();
    parent_B();
    join
  end
endmodule
