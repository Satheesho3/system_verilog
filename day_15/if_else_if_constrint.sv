class parent;
  rand bit [10:0]a;
  rand enum {high,medum,low}b;
  constraint range{if (b==high)
    a<50;
       else if(b==medum)
           a>300;
                  else
                    a inside{[500:600]};}
 
                    
endclass
module top;
  parent p;
  initial begin
    p=new();
    repeat(50)begin
    p.randomize();
      $display(" a= %0d", p.a);
    end
  end
endmodule
