class this_keyword;
  string brand;
  int speed;
  function new(string brand,int speed);
    this.brand=brand;
    this.speed=speed;
  endfunction
  function void display();
    $display("brand=%0s speed=%0d",brand,speed);
  endfunction
endclass
  module top;
    initial begin
    this_keyword a;
      a=new("ktm",220);
      a.display();
    end 
  endmodule
