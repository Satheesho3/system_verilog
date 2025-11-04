module unique_example;
  int a,b;
  initial begin
    a=20;
    b=30;
    unique if(a<b)
      $display("1");
    else if(a<10)
      $display("2");
    else if(a<30)
      $display("4");
    else
      $display("3");
  end
endmodule
