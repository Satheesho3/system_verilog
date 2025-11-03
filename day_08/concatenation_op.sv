module concatenation_op;
  logic [8:0]a,b;
  logic c,d,e,f;
  initial begin
    a={4'b1010,4'b0101};
    $display("a=%b",a);
    c=1'b1;
    d=1'b1;
    e=1'b0;
    f=1'b0;
    b={c,d,e,f,4'b0011};
       $display("b=%b",b);
       end
       endmodule
       
