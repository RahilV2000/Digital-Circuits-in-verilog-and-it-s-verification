
module stimulas;

    reg en, in , clk; 
    wire [7:0] Q;

    shift_left_register   srr1(in, en, Q, clk);

    initial 
        clk = 0;
    
    always
        #2 clk = ~clk;
    
    initial 
        $monitor(" in = ", in ," en = ", en,  " clk = ",clk, " Q = %b", Q);
    
    initial 
        begin
		      in = 0;     en = 0;
           #4 in = 1;     en = 1;
           #4 in = 0;     en = 1;
           #4 in = 1;     en = 1;
           #4 in = 0;     en = 1;
		   #4 in = 1;     en = 1;
		   #4 in = 0;     en = 1;
		   #4 in = 0;     en = 1;
		   #4 in = 1;     en = 1;
		   
		   #5 $finish;
   end

endmodule