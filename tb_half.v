module half_adder_and_sub_test;
   
   reg a,b;
   wire sum,carry,diff,bout;
   
   half_adder uut1(.a(a),.b(b),.sum(sum),.carry(carry));
   half_sub uut2(.a(a),.b(b),.diff(diff),.bout(bout));
   
   
   
   initial begin
   $dumpfile("test.vcd");
   $dumpvars(0,half_adder_and_sub_test)   ;
   
        a = 0; b = 0;  #10;
        a = 0; b = 1;  #10;
        a = 1; b = 0;  #10;
        a = 1; b = 1;  #10;
     
        
        $finish;
    end
endmodule

   
   
