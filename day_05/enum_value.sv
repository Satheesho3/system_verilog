module enum_example;
  typedef enum{green,yellow,red}data_t;
  data_t c;
  initial begin
    c=yellow;
    $display("c=%0s",c.name());
    $display("c=%0d",c);
  end
endmodule
    
