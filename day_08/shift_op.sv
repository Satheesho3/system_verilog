module shift_op;
  logic [3:0]a;
  logic signed [3:0]b;
  logic [3:0]x;
  initial begin
    a=4'b1010;
    x=a<<2;
    $display("x=%b",x);
    x=a>>2;
    $display("x=%b",x);
    b=(-5);
    $display("b=%b",b);
    x=b<<<1;
    $display("x=%b",x);
    x=b>>>1;
    $display("x=%b",x);
  end
endmodule
