class bike;
  string name;
  string colour;
  int speed;
  function void display();
    $display("name=%0s colour=%0s speed=%0d",name,colour,speed);
    endfunction
endclass
class car;
    string name;
  string colour;
  int speed;
  function void display();
    $display("name=%0s colour=%0s speed=%0d",name,colour,speed);
    endfunction
endclass
module top;
  initial begin
  bike b;
  car a;
  b=new();
     b.name="yamaha";            
    b.colour="blue";
    b.speed=234;
    b.display();
     a=new();
     a.name="mahindra";
    a.colour="black";
    a.speed=250;
    a.display();
  end
endmodule
