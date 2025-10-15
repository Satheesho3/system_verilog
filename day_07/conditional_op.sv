module conditional_op;
  logic [7:0]a;
  logic en;
  initial begin
    en=1'b1;
    a=en?8'hdd:8'hcd;
    $display("en=%0d a=%0h",en,a);
  end
endmodule
