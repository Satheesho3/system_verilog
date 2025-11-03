module static_casting;
  int a;
  shortint b;
  initial begin
    a=32'h48362735;
    b=shortint'(a);
    $display("b=%h",b);
  end
endmodule
