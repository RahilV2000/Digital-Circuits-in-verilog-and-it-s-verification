module blocking;
  reg a;
  reg b;
  reg c;
  reg d;
initial begin
    a <= 1'b0;
    b <= 1'b1;#10;
    c <= 1'b0;#5;
    d <= {a, b, c};#20;
end
initial begin
    $monitor($time,"a=%b b=%b c=%b d=%b",a,b,c,d);
end
initial begin
	$dumpfile("dump.vcd"); 
	$dumpvars;
	
	end
endmodule