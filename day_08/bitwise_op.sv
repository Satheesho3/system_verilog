module bitwise_op;
  logic [7:0]a;
  int b;
  initial begin
    a=8'b10101101;
    b=&a;
    $display("b=%d",b);
    b=|a;
    $display("b=%d",b);
    b=~&a;
    $display("b=%d",b);
    b=^a;
    $display("b=%d",b);
    b=~^a;
    $display("b=%d",b);
  end
endmodule
