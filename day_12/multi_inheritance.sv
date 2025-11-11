class parent_class;
  int data;
  function void dis();
    $display("data=%0d",data);
  endfunction
endclass
class child_class extends parent_class;
  int a;
  function void disa();
     $display("a=%0d",a);
  endfunction
endclass
    class childa_class extends child_class;
  int b;
  function void disb();
    $display("b=%0d",b);
  endfunction
endclass
    class childb_class extends childa_class;
  int c;
  function void disc();
    $display("c=%0d",c);
  endfunction
endclass
class childc_class extends childb_class;
  int d;
  function void disd();
    $display("d=%0d",d);
  endfunction
endclass
    module top;
      childc_class p;
      initial begin
        p=new();
        p.data=1;
        p.a=2;
        p.b=3;
        p.c=4;
        p.d=5;
         p.dis();
        p.disa();
         p.disb();
         p.disc();
         p.disd();
      end
    endmodule

    
