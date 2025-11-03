module replication_op;
  logic [7:0]a;
  logic [8:0]b;
  logic [11:0]c;
  logic [14:0]d;
  initial begin
    a={4{2'b10}};
    $display("a=%b",a);
    b={3{3'b101}};
    $display("b=%b",b);
    c={3{4'b1010}};
    $display("b=%b",c);
    d={3{5'b10110}};
    $display("d=%b",d);
  end
endmodule
    
