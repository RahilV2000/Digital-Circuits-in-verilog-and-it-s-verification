module mux4_1(out,i0,i1,i2,i3,s1,s0);
  output reg out;
  input i0;
  input i1;
  input i2;
  input i3;
  input s1;
  input s0;
  
  always @(*) begin
      if({s1,s0}==2'd0)
        out=i0;
      else if({s1,s0}==2'd1)
        out=i1;
      else if({s1,s0}==2'd2)
        out=i2;
      else 
        out=i3;     
  end
endmodule