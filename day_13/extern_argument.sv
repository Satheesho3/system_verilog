class project;
  int a;
  string b;
  extern function void display(int a,string b);
endclass
    function void project::display(int a,string b);
      
      $display("a=%0d b=%0s",a,b);
      endfunction
      module top;
        project p;
        initial begin
          p=new();
          p.display(5,"satheesh");
         
        
        end
      endmodule
