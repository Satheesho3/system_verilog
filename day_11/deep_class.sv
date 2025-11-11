class range;
  bit [7:0]x;
  bit [7:0]y;
  function new();
    x=8'h12;
    y=8'h34;
  endfunction
  function range copy;
    copy=new();
    copy.x=this.x;
    copy.y=this.y;
    return copy;
  endfunction
endclass
class packet;
  bit [7:0]a;
  bit [7:0]b;
  range ar;
  function new();
    a=8'h56;
    b=8'h98;
    ar=new();
  endfunction
  function void display();
    $display("a=%0h b=%0h x=%0h y=%0h",a,b,ar.x,ar.y);
    endfunction
  function packet copy();
    copy=new();
    copy.a=this.a;
    copy.b=this.b;
    copy.ar=ar.copy;
    return copy;
  endfunction
    endclass
    module top;
      packet p1;
      packet p2;
      initial begin
        p1=new();
        $display("1");
        p1.display();
        p2=p1.copy;
        $display("2");
        p2.display();
        p2.a=8'h21;
        p2.ar.x=8'h32;
        p2.ar.y=8'h19;
        $display("3");
        p2.display();
        $display("4");
        p1.display();
                 
      end
    endmodule
