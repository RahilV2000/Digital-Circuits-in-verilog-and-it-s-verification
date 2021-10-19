module half_adder_verilog_tb();

reg a, b;
wire s, c;

half_adder dut (.a(a), .b(b), .s(s), .c(c));

initial
begin

a = 1'b0;
b = 1'b0;
#50;

a = 1'b0;
b = 1'b1;
#50;

a = 1'b1;
b = 1'b0;
#50;

a = 1'b1;
b = 1'b1;

end
initial begin
	$dumpfile("dump.vcd"); 
	$dumpvars;
	
	end

endmodule