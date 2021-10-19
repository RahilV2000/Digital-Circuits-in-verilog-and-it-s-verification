module blocking;
  reg a;
  reg b;
  reg c;
  reg d;
initial begin
    a = 1'b0;
    b = #10 1'b1;
    c = #5 1'b0;
    d = #20 {a, b, c};
end
initial begin
    $monitor($time,"a=%b b=%b c=%b d=%b",a,b,c,d);
end
initial begin
	$dumpfile("dump.vcd"); 
	$dumpvars;
	
	end
endmodule