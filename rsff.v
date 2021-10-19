module Main(input S,
    input R,
    input clk,
    output Q,
    output Qbar
    );
    reg M,N;

always @(posedge clk) begin
  M <= !(S & clk);
  N <= !(R & clk);
end
assign Q = !(M & Qbar);
assign Qbar = !(N & Q);

endmodule