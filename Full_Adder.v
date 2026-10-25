module q(input wire a,b,output wire s,c);
assign {c,s}=a+b;
endmodule
