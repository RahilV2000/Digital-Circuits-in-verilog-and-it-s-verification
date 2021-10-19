module alu_8_tb;
   reg [3:0] a;
   reg [3:0] b;
   reg [2:0] s;
   wire [4:0] out;

   alu_8 m1(.out(out),.a(a),.b(b),.s(s));

   initial begin
       a=4'b1010;
       b=4'b1111;
       s=3'b000;
   end
   always
     #10 s=s+1'b1;
   initial begin
       #50 $finish;
   end  
initial begin
	$dumpfile("dump.vcd"); 
	$dumpvars;
	
	end
endmodule     