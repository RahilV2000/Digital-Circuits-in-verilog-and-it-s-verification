module tb;
  reg 			clk, in, rstn;
  wire 			out;
  reg [1:0] l_dly;
  reg 			tb_in;
  integer 	loop = 20;
  
  always #10 clk = ~clk;
  
  det_1011 u0 ( .clk(clk), .rstn(rstn), .in(in), .out(out) );
  
  initial begin
  	clk <= 0;
    rstn <= 0;
    in <= 0;
    
    repeat (5) @ (posedge clk);
    rstn <= 1;

`ifndef RANDOM
	// Generate a directed pattern
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 1;

`else    
    // Or random stimulus using a for loop that drives a random
    // value of input N times, but there is lesser chance to hit
    // this pattern
    for (int i = 0 ; i < loop; i ++) begin
      l_dly = $random;
      repeat (l_dly) @ (posedge clk);
      tb_in = $random;
      in <= tb_in;
    end
`endif    
    
    #100 $finish;
  end
  
  always @ (posedge clk) begin
    $strobe ("T=%0t in=%0b out=%0b", $time, in, out);
  end
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule