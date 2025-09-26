module array_sorting;
  int a[];
  initial begin
    a=new[6];
    a='{7,9,8,5,4,2};
    a.sort();
    $display("sort=%0p",a);
    a.rsort();
    $display("rsort=%0p",a);
    a.reverse();
    $display("reverse=%0p",a);
    a.shuffle();
    $display("shuffle=%0p",a);
  end
endmodule
