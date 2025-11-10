class object;
  bit [7:0]data;
  bit [7:0]addr;
  bit write;
  string name;
  function new();
    data=8'h34;
    addr=8'h28;
    write=1;
    name="santa";
  endfunction
  function void display();
    $display("data=%0h addr=%0h write=%0b name=%0s",data,addr,write,name);
  endfunction
endclass
  module top;
      object a,b;
    initial begin
      a=new();
      b=a;
      $displaY("1");
      a.display();
      $display("2");
      b.display();
      b.data=8'h56;
      b.write=0;
      $display("3");
      b.display();
      $display("4");
      a.display();
    end 
  endmodule
