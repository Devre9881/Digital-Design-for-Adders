module full_adder_test;
   
   reg a,b,cin,bin;
   wire sum1,cout1,sum2,cout2;
   
   full_adder uut1(.a(a),.b(b),.cin(cin),.sum(sum1),.cout(cout1));
   full_adder_using_2half_adder uut2(.a(a),.b(b),.cin(cin),.sum(sum2),.cout(cout2));
   full_sub uut3(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
   initial begin
   $dumpfile("test.vcd");
   $dumpvars(0,full_adder_test);
   
        a = 0; b = 0; cin = 0; bin = 0;  #10;
        a = 0; b = 0; cin = 1; bin = 1;  #10;
        a = 0; b = 1; cin = 0; bin = 0;  #10;
        a = 0; b = 1; cin = 1; bin = 1;  #10;
        a = 1; b = 0; cin = 0; bin = 0;  #10;
        a = 1; b = 0; cin = 1; bin = 1;  #10;
        a = 1; b = 1; cin = 0; bin = 0;  #10;
        a = 1; b = 1; cin = 1; bin = 1;  #10;
        
        $finish;
    end
endmodule

   
   
