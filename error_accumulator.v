module error_accumulator(input  wire err1,err2,err3,output wire [1:0]error_count);
assign {error_count}=err1+err2+err3;
endmodule
