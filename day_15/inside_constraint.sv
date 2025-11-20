`define start_range 20
`define end_range 50
class parent #(parameter int p1,p2);
  rand bit [7:0]a;
  rand bit [7:0]b;
  rand bit [7:0]c;
  rand bit [7:0]d;
  rand bit [7:0]e;
  rand bit [7:0]f;
  rand bit [7:0]g;
  constraint range{a inside{[10:20]};}
  constraint range1{b inside{20,30,40};}
  constraint range2{c inside{[10:20],21,23,25,[30:40]};}
  constraint range3{d inside{[a:b]};}
  constraint range4{e inside{[100:200]};}
  constraint range5{f inside{[p1:p2]};}
                              constraint range6{g inside{[`start_range:`end_range]};}
                             endclass
                             module top;
                               parent#(50,70) p;
                               initial begin
                                 p=new();
                                 repeat(3)begin
                                   p.randomize();
                                   $display("a=%0d b=%0d c=%0d d=%0d e=%0d f=%0d g=%0d",p.a,p.b,p.c,p.d,p.e,p.f,p.g );
                                 end
                               end
                             endmodule
