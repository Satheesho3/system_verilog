module associative_array;
  longint assoc[int];
  int idx;
  initial begin
    idx=1;
    repeat(64)begin
      assoc[idx]=idx;
      idx=idx<<1;
    end
    $display("first value");
    if(assoc.first(idx))
       $display("assoc=%0d",idx,assoc[idx]);
       $display("next value");
       if(assoc.next(idx))
          $display("assoc=%0d",idx,assoc[idx]);
          $display("last value");
    if(assoc.last(idx))
             $display("assoc=%0d",idx,assoc[idx]);
             $display("previous value");
    if(assoc.prev(idx))
                $display("assoc=%0d",idx,assoc[idx]);
  end         
  
endmodule
