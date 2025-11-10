class range;
  bit [7:0]a;
  bit [7:0]b;
  function new();
    a=8'h32;
    b=8'h23;
  endfunction
endclass
class project;
  bit [7:0]x;
  bit [7:0]y;
  range ar;
  function new();
    x=8'h67;
    y=8'h76;
    ar=new();
  endfunction
  function void display();
    $display("a=%0h b=%0h x=%0h y=%0h",ar.a,ar.b,x,y);
  endfunction
endclass
  module top;
    project p1,p2;
    initial begin
      p1=new();
      p2=new p1;
      $display("1");
      p1.display();
      $display("2");
      p2.display();
      p2.ar.a=8'h56;
      p2.ar.b=8'h12;
      p2.x=8'h98;
      $display("3");
      p1.display();
      $display("4");
      p2.display();
    end
  endmodule
