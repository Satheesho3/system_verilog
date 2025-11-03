module size_casting;
  int a;
  logic [7:0]b;
  initial begin
    a=32'h48362735;
    b=8'(a);
    $display("b=%h",b);
  end
endmodule
