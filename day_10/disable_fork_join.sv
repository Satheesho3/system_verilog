module parent;
  initial begin
    $display("1");
    fork :t;
      $display("%t 2",$time);
      begin
        
      #10;
      $display("%t 3",$time);
      end
    join_any
     fork
       $display("%t 4",$time);
       begin
         
      #5;
       $display("%t 5",$time);
       end
     join_none
     disable t ;
       $display("%t complete",$time);
      end
      endmodule
