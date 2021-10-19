module full_adder(a,b,cin,cout,sum);
     input a;
     input b;
     input cin;
    output cout;
    output sum;

assign sum = a ^ b ^ cin;
assign cout =  a & b | (a^b) & cin;  //or we also writte Cout= a&b | a&cin | b&cin

endmodule