module union_tagged;
  logic [31:0]x;
  typedef union tagged { logic [31:0]a;
                        logic [3:0]b;
                        logic [7:0]c;}data_t;
  data_t  u;
  initial begin
    u=tagged a 32'h29874476;
    x=u.a;
    $display("x=%0h",x);
    u=tagged b 4'h4;
    x=u.b;
    $display("x=%0h",x);
    u=tagged c 8'h53;
        x=u.c;
    $display("x=%0h",x);
  end
endmodule
