module half_adder
 (input a,b,output sum,carry);

assign sum = (a^b);
assign carry = (a&b);

endmodule

module half_sub
 (input a,b,output diff,bout);

assign diff = (a^b);
assign bout = (~a&b);

endmodule


