module enum_value;
  typedef enum{green=2'b00,yellow=2'b01,red=2'b10}data_t;
  data_t c;
  initial begin
    c=yellow;
    $display("c=%0s",c.name(),c);
    
  end
endmodule
