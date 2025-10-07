module string_type;
  string s,s1;
  
  initial begin
    s="satheesh";
    s1="HELLO WORLD";
    $display("len=%0d",s.len());
    $display("upper=%0d",s.toupper());
    $display("lower=%0d",s1.tolower());
    $display("substr=%0d",s.substr(0,5));
    $display("getc=%0c",s1.getc(4));
    s1.putc(3,"A");
    $display("putc=%0s",s1);
    
  end
endmodule
