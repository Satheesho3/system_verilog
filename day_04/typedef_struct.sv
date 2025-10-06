typedef struct{
  int id;
  string name;
  real salary;
}data_t;
module str;
  data_t x;
initial begin
  x.id=141;
  x.name="satheesh";
  x.salary=80000;
  $display("id=%0d,name=%0s,salary=%0d",x.id,x.name,x.salary);
end
endmodule
