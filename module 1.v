module T_13_guide_matcher(input wire [15:0]guide,window,input wire [1:0]threshold,output wire [3:0]mismatch_count,output wire match);
wire c1,c2;
genvar i;
generate for(i=1;i<16;i=i+2)begin xor_loop
xor f1(c1,guide[i-1],window[i-1]);
xor f2(c2,guide[i],window[i]);
if(c1 or c2)
mismatch_count=mismatch_count+1;
end
endgenerate

assign match= mismatch_count<=threshold?1'b1:1'0;

endmodule
