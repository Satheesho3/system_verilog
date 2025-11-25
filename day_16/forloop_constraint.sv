class parent;
  rand bit [4:0]a[];
  constraint d{a.size()==5;}
  constraint c{foreach(a[i]){a[i]>i*i;}}
               endclass
               module top;
                 parent p;
                 initial begin
                   p=new();
                   repeat(5)begin
                   p.randomize();
                     foreach(p.a[i])
                     $display("a[%d]=%0d",i,p.a[i]);
                   end
                 end
               endmodule
