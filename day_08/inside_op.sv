module inside_op;
  int a;
  bit x;
  initial begin
    a=12;
    x=(a inside {[2:15]});
    $display("x=%b",x);
    a=4;
    x=(a inside {[0:3],[3:8]});
    $display("x=%b",x);
     a=4;
    x=(a inside {[0:3],[5:8]});
    $display("x=%b",x);
  end 
endmodule
