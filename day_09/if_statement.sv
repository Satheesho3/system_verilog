module if_statement;
int a,b;
initial begin
  a=10;
  b=20;
  if(a<b)
    $display("out_1");
  else
    $display("out_0");
end
endmodule
  
