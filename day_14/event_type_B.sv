module parent;
  event e1;
  task parent_A();
    repeat(2) begin
    #3;$display("t=%t 1",$time);
    ->e1;
    $display("t=%t 2",$time);
    end
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
