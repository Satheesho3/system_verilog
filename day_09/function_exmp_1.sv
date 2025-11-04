module function_exmp_1;
  function bit [1:0] add(input int a,b);
    if(a<b)begin
      return 2'b00;
    $display("1");
    end
    if(a>b)begin
      return 2'b01;
      $display("2");
    end
    if(a==b)begin
      return 2'b10;
      $display("3");
    end
  endfunction
    initial begin
      bit [1:0]done;
      int a,b;
      repeat(5)begin
        a=$urandom_range(2,9);
        b=$urandom_range(1,9);
        done=add(a,b);
        $display("a=%0d b=%0d",a,b);
        if( done==2'b00)$display("1");
        if( done==2'b01)$display("2");
        if( done==2'b10)$display("3");
      end
    end
endmodule
