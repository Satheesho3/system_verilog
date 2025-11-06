class bike;
  string brand;
  string colour;
  int speed;
  function void display();
    $display("brand=%0s colour=%0s speed=%0d",brand,colour,speed);
    endfunction
endclass
  module top;
    bike b1;
    bike b2;
    initial begin
      b1=new();
      b1.brand="ninja";
      b1.colour="black";
      b1.speed=250;
      b1.display();
      b2=new();
      b2.brand="yamaha";
      b2.colour="white";
      b2.speed=150;
      b2.display();
    end
  endmodule
