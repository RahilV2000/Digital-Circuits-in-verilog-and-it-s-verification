

module shift_right_register( in, en, Q, clk );

    input in, en, clk;
    output [7:0] Q;
    reg [7:0] Q;

    initial 
        Q = 8'b00000000;
    
    always @(posedge clk) begin
        if(en)
        begin
            Q = {in, Q[7:1]};
        end
    end
endmodule

