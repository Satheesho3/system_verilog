module loop_example;
  int i,j;
  int mem[3:0];
  initial begin
    outerloop:for(j=0;j<3;j++)
     begin 
      #10; 
   innerloop: for(i=0;i<5;i++)
    begin
      mem[i]=i+1;
    $display("mem[i]=%0d",$time,i,mem[i]);
    end  
     end 
  end
endmodule
