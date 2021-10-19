module mux4_1_tb;
   reg s1;
   reg s0;
   reg i0;
   reg i1;
   reg i2;
   reg i3;
   wire out;

   mux4_1 m1(.out(out),.s1(s1),.s0(s0),.i0(i0),.i1(i1),.i2(i2),.i3(i3));s
   initial begin
       {s1,s0}=2'd0;
       i0=1'b0;
       i1=1'b1;
       i2=1'bx;
       i3=1'bz;
       #20 {s1,s0}=2'd1;
       #20 {s1,s0}=2'd2;
       #20 {s1,s0}=2'd3;
       #20 {s1,s0}=2'd1;
   end          
initial begin
	$dumpfile("dump.vcd"); 
	$dumpvars;
	
	end
endmodule   