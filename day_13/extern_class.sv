class project;
  int data;
  string name;
  extern function void display();
    extern task delay();
endclass
      function void project::display();
        $display("data=%0d name=%0s",data,name);
      endfunction
      task project::delay();
        #40;
        $display("time=%0t data=%0d name=%0s",$time,data,name);
      endtask
      module top;
        project p;
        initial begin
          p=new();
          p.data=5;
          p.name="satheesh";
          p.display();
          p.delay();
        end
      endmodule
