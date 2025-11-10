class car;
  string colour;
  int speed;
  task display();
     colour="red";
      speed=240;
    $display("time=%0t colour=%0s speed=%0d",$time,colour,speed);
    #5;
     colour="black";
     speed=290;
    $display("time=%0t colour=%0s speed=%0d",$time,colour,speed);
    endtask
endclass
    
  module top;
    initial begin
      car a;
      a=new();
      a.display();
    end
  endmodule
