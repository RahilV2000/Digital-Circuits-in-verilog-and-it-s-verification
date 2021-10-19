module full_adder_tb;

    reg a, b, cin;
    wire cout, sum;

    full_adder out (a,b,cin,cout,sum);
    
    initial 
        begin
            
            a = 0;b = 0;cin = 0; #20;
            a = 0;b = 0;cin = 1; #20;
            a = 0;b = 1;cin = 0; #20;
            a = 0;b = 1;cin = 1; #20;
            a = 1;b = 0;cin = 0; #20;
            a = 1;b = 0;cin = 1; #20;
            a = 1;b = 1;cin = 0; #20;
            a = 1;b = 1;cin = 1; #20;
         end
initial begin
	$dumpfile("dump.vcd"); 
	$dumpvars;
	
	end
endmodule