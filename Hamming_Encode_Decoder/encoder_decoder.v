`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Compana: 
// Engineer: 
// 
// Create Date:    22:10:34 07/08/2019 
// Design Name: 
// Module Name:    encoder_decoder 
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
module encoder_decoder( input select,s,inout[3:0] a,inout reg [6:0]b);
wire t1,t2,t3;
xor b1(t1,a[0],a[1],a[3]);
xor b2(t2,a[0],a[2],a[3]);
xor b3(t3,a[1],a[2],a[3]);
wire w1,w2,w3;
xor b4 (w1,b[0],b[2],b[4],b[6]);
xor b5 (w2,b[1],b[2],b[5],b[6]);
xor b6 (w3,b[3],b[4],b[5],b[6]);

always@(*)
begin
case({s,select,t3,t2,t1})
5'b00000: begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00001:  begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00010:  begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00011: begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00100: begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00101: begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00110: begin b[0]=t1;b[1]=t2;b[3]=t3; end
5'b00111: begin b[0]=t1;b[1]=t2;b[3]=t3; end

5'b01000: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01001: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01010: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01011: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01100: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01101: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01110: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
5'b01111: begin b[0]=~t1;b[1]=~t2;b[3]=~t3; end
endcase
b[2]=a[0];
b[4]=a[1];
b[5]=a[2];
b[6]=a[3];
end
always@(*)
begin
case({s,select,w3,w2,w1})
5'b10000: begin  a[0]=b[2];a[1]=b[4];a[2]=b[5]; a[3]=b[6];end
5'b10011: begin  a[0]=~b[2];a[1]=b[4];a[2]=b[5]; a[3]=b[6];end
5'b10101: begin  a[0]=b[2];a[1]=~b[4];a[2]=b[5]; a[3]=b[6];end
5'b10110: begin  a[0]=b[2];a[1]=b[4];a[2]=~b[5]; a[3]=b[6];end
5'b10111: begin  a[0]=b[2];a[1]= b[4];a[2]=b[5]; a[3]=~b[6];end
endcase

case({select,~w3,~w2,~w1})
5'b11000:begin  a[0]=b[2];a[1]=b[4];a[2]=b[5]; a[3]=b[6];end
5'b11011: begin  a[0]=~b[2];a[1]=b[4];a[2]=b[5]; a[3]=b[6];end
5'b11101: begin  a[0]=b[2];a[1]=~b[4];a[2]=b[5]; a[3]=b[6];end
5'b11110: begin  a[0]=b[2];a[1]=b[4];a[2]=~b[5]; a[3]=b[6];end
5'b11111: begin  a[0]=b[2];a[1]= b[4];a[2]=b[5]; a[3]=~b[6];end
endcase
end

endmodule
