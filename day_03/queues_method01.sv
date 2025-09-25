module queues_method01;
  int a[$];
  int x;
  initial begin
    a.push_front(20);
    a.push_front(10);
    a.push_front(30);
    a.push_front(40);
    $display("push_front=%0p",a);
    a.push_back(60);
    a.push_back(50);
    $display("push_back=%0p",a);
    x= a.pop_back();
    $display("pop_back=%0p",a);
    x= a.pop_front();
    $display("pop_front=%0p",a);
    a.delete(2);
    $display("delete=%0p",a);
     a.push_front(20);
    a.push_front(10);
    a.push_front(40);
    $display("push_front=%0p",a);
    a.insert(2,3);
    $display("insert=%0p",a);
    x=a.size();
    $display("size=%0p",x);
  end
endmodule
