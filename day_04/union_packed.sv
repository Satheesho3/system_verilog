module union_packed;
  logic [31:0]x;
  typedef union packed { logic [31:0]a;
                        logic [31:0]b;
                        logic [31:0]c;}data_t;
  data_t  u;
  initial begin
    u.a=32'h29874476;
    $display("u.a=%0h",u.a);
    x=u.b;
    $display("x=%0h",x);
     x=u.c;
    $display("x=%0h",x);
  end
endmodule
