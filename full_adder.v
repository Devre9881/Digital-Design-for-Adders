module full_adder
 (input a,b,cin,output sum,cout);

assign sum = (a^b^cin);
assign cout = ((a&b)|(cin & (a^b)));

endmodule

module full_adder_using_2half_adder
 (input a,b,cin,output sum,cout);
  wire sum1,carry1,carry2;

assign sum1 = (a^b);
assign sum = (sum1^cin);
assign carry1 = (a&b);
assign carry2 = (sum1&cin);
assign cout = (carry1|carry2);

endmodule

module full_sub
 (input a,b,bin,output diff,bout);

assign diff = (a^b^bin);
assign bout = (~a & b) | (bin & ~ (a ^ b));


endmodule




