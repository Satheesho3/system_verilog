module fork_join_none;
  initial begin
    $display("t=%0t Start of simulation", $time);

    fork
      begin
        #5 $display("Process 1 finished at time %0t", $time);
      end

      begin
        #10 $display("Process 2 finished at time %0t", $time);
      end

      begin
        #2 $display("Process 3 finished at time %0t", $time);
      end
    join_none

    $display("Time %0t: All processes completed", $time);
  end
endmodule
