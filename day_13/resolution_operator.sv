class parent_class;
  int a;
  static int b;
 static  function void display();
    $display(" b=%0d",b);
  endfunction
endclass
  module top;
    initial begin
       parent_class::b=6;
      parent_class::display();
    end 
  endmodule
