module tb_dff;
	reg clk;
	reg d;
	reg rstn;
	reg [2:0] delay;
    integer i;

    dff  dff0 ( .d(d),
                .rstn (rstn),
                .clk (clk),
                .q (q));

    // Generate clock
    always #10 clk = ~clk;

    // Testcase
    initial begin
    	clk <= 0;
    	d <= 0;
    	rstn <= 0;

    	#15 d <= 1;
    	#10 rstn <= 1;
    	for (i = 0; i < 5; i=i+1) begin
    		delay = $random;
    		#(delay) d <= i;
    	end
    end
initial begin
   $dumpfile("dump.vcd");
   $dumpvars;
   end
endmodule   