module parent;
  event e1;
  task parent_A();
    #10;$display("t=%t 1",$time);
   #10; ->e1;
    $display("t=%t 2",$time);
  endtask
  task parent_B();
    #5;$display("t=%t 3",$time);
    @e1;
    $display("t=%t triggerred",$time);
  endtask
  initial begin
    fork
    parent_A();
    parent_B();
    join
  end
endmodule
