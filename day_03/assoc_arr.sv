module assoc_arr;
  longint assoc[int];
  
  
  initial begin
    assoc[1]=9;
    assoc[2]=8;
    assoc[3]=7;
    assoc[4]=6;
    $display("assoc[1]=%0d",assoc[1]);
    $display("assoc[2]=%0d",assoc[2]);
    $display("assoc[3]=%0d",assoc[3]);
    $display("assoc[4]=%0d",assoc[4]);
  end
endmodule
