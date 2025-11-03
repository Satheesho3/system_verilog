module static_casting;
  logic [7:0]a;
  int b;
  initial begin
    a=8'b11001100;
    b=$signed(a);
    $display("b=%d",b);
      b=$unsigned(a);
    $display("b=%d",b);
  end
endmodule
