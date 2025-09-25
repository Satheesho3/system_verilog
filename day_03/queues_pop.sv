module queue_pop;
  int a[$]={6,5,4,3,2,1};
  int x,y;
  initial begin
    x=a.pop_front();
    $display("pop_front=%0p",x);
      x=a.pop_back();
    $display("pop_back=%0p",x);
    a.push_front(9);
    $display("push_front=%0p",a);
    a.push_back(7);
    $display("push_back=%0p",a);
  end
endmodule
     
