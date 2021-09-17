`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:35:06 07/07/2019 
// Design Name: 
// Module Name:    Hamming_code_decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Hamming_code_decoder(input select,s,input [6:0] x,output reg [3:0] y);
wire w1,w2,w3;
xor x1 (w1,x[0],x[2],x[4],x[6]);
xor x2 (w2,x[1],x[2],x[5],x[6]);
xor x3 (w3,x[3],x[4],x[5],x[6]);
always@(*)
begin
case({select,w3,w2,w1})
4'b0000:begin  y[0]=x[2];y[1]=x[4];y[2]=x[5]; y[3]=x[6];end
4'b0011: begin  y[0]=~x[2];y[1]=x[4];y[2]=x[5]; y[3]=x[6];end
4'b0101: begin  y[0]=x[2];y[1]=~x[4];y[2]=x[5]; y[3]=x[6];end
4'b0110: begin  y[0]=x[2];y[1]=x[4];y[2]=~x[5]; y[3]=x[6];end
4'b0111: begin  y[0]=x[2];y[1]= x[4];y[2]=x[5]; y[3]=~x[6];end
endcase

case({select,~w3,~w2,~w1})
3'b1000:begin  y[0]=x[2];y[1]=x[4];y[2]=x[5]; y[3]=x[6];end
3'b1011: begin  y[0]=~x[2];y[1]=x[4];y[2]=x[5]; y[3]=x[6];end
3'b1101: begin  y[0]=x[2];y[1]=~x[4];y[2]=x[5]; y[3]=x[6];end
3'b1110: begin  y[0]=x[2];y[1]=x[4];y[2]=~x[5]; y[3]=x[6];end
3'b1111: begin  y[0]=x[2];y[1]= x[4];y[2]=x[5]; y[3]=~x[6];end
endcase
end
endmodule
