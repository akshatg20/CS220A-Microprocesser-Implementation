`timescale 1ns / 1ps
// `include "half_adder.v"
// `include "full_adder.v"
// module add( unsigned input [31:0] A, unsigned input [31:0] B, unsigned output [31:0] out);
	 
//  wire [31:0] cin;
//  half_adder H1(A[0],B[0],out[0],cin[0]);
 
//  genvar j;
//  generate 
//   begin
//    for(j=1;j<=31;j=j+1)
//     begin
//      full_adder F1(A[j],B[j],cin[j-1],out[j],cin[j]);
//     end
//   end
// endgenerate

// endmodule

module addu( unsigned input [31:0] A, unsigned input [31:0] B, unsigned output [31:0] out);
	 
always@(*) begin
  out = A + B;
end  

endmodule