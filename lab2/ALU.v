module ALU (A, B, sel, Cin, Y, Zero);
	input [32 - 1 : 0] A, B;
	input [3 : 0] sel;
	input Cin;
	output reg[32 - 1 : 0] Y;
	output reg Zero;
	wire out_add,out_or,out_not,out_xor,out_xnor,out_nor;
	wire[32-1:0] out_dec;
	wire[5-1:0]  out_arb;

	
	AND  a1(.a(A[0]),.b(B[0]),.c(out_add));
	OR   a2(.a(A[0]),.b(B[0]),.c(out_or));
	NOT  a3(.a(A[0]),.b(out_not));
	XOR  a4(.a(A[0]),.b(B[0]),.c(out_xor));
	XNOR a5(.a(A[0]),.b(B[0]),.c(out_xnor));
	NOR  a6(.a(A[0]),.b(B[0]),.c(out_nor));
	Decoder a7(.a(A[5-1:0]),.b(out_dec[32-1:0]));
	Arbiter a8(.r(A[5-1:0]),.g(out_arb[5-1:0]));
	/*
		Design your code here
	*/
	always@(*)begin
		case(sel)
			4'b0000:begin
				Y = {31'b0,out_add};
				if(out_add == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b0001:begin
				Y = {31'b0,out_or};
				if(out_or == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b0010:begin
				Y = {31'b0,out_not};
                if(out_not == 0)
                    Zero = 1;
                else
                    Zero = 0;
			end
			4'b0011:begin
				Y = {31'b0,out_xor};
                if(out_xor == 0)
                    Zero = 1;
                else
                    Zero = 0;
			end
			4'b0100:begin
				Y = {31'b0,out_xnor};
                if(out_xnor == 0)
                    Zero = 1;
                else
                    Zero = 0;
			end
			4'b0101:begin
				Y = {31'b0,out_nor};
                if(out_nor == 0)
                    Zero = 1;
                else
                    Zero = 0;
			end
			4'b0110:begin
				Y = A + B + Cin;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b0111:begin
				Y = A - B;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1000:begin
				if(A > B)
					Y = A - B;
				else
					Y = B - A;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1001:begin
				Y = A[15:0]*B[15:0];
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1010:begin
				Y = A << 1'b1;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1011:begin
				Y = $signed(A) <<< 1'b1;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1100:begin
				Y = A >> 1'b1;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1101:begin
				Y = $signed(A) >>> 1'b1;
				if(Y == 0)
					Zero = 1;
				else
					Zero = 0;
			end
			4'b1110:begin
				Y = out_dec;
				Zero = 1'b0;
			end
			4'b1111:begin
				Y = out_arb;
				Zero = 1'b0;
			end
		endcase
	end
endmodule 

module Arbiter(r, g); // find-first-one unit
	input [5 - 1 : 0] r;
	output[5 - 1 : 0] g;
	reg [5 - 1 : 0] g;
	always@(*)begin
		casex(r)
			5'b00000: g = 5'b00000; 
			5'bxxxx1: g = 5'b00001; 
			5'bxxx10: g = 5'b00010; 
			5'bxx100: g = 5'b00100; 
			5'bx1000: g = 5'b01000;  
			5'b10000: g = 5'b10000; 
			 default: g = 5'hx;
		endcase
	end
endmodule

module Decoder(a, b); // binary to one-hot decoder
	input [5 - 1 : 0] a;
	output[32- 1 : 0] b;
	wire[32 - 1 : 0]b = 1 << a;
endmodule

module AND (a, b, c);
	input  a, b;
	output c;
	wire and1;
	nand nand_to_and1(and1,a,b);
	nand nand_to_and2(c,and1,and1);
endmodule

module OR (a, b, c);
	input  a, b;
	output c;
	wire or1,or2;
	nand nand_to_or1(or1,a,a);
	nand nand_to_or2(or2,b,b);
	nand nand_to_or3(c,or1,or2);
endmodule

module NOT (a, b);
	input  a;
	output b;
	nand nand_to_not(b,a,a);
endmodule

module NOR (a, b, c);
	input  a, b;
	output c;
	wire nor1,nor2,nor3;
	nand nand_to_nor1(nor1,a,a);
	nand nand_to_nor2(nor2,b,b);
	nand nand_to_nor3(nor3,nor1,nor2);
	nand nand_to_nor4(c,nor3,nor3);
endmodule

module XNOR (a, b, c);
	input  a, b;
	output c;
	wire xnor1,xnor2,xnor3,xnor4;
	nand nand_to_xnor1(xnor1,a,b);
	nand nand_to_xnor2(xnor2,xnor1,a);
	nand nand_to_xnor3(xnor3,xnor1,b);
	nand nand_to_xnor4(xnor4,xnor3,xnor2);
	nand nand_to_xnor5(c,xnor4,xnor4);
endmodule

module XOR (a, b, c);
	input  a, b;
	output c;
	wire xor1,xor2,xor3;
	nand nand_to_xor1(xor1,a,b);
	nand nand_to_xor2(xor2,xor1,a);
	nand nand_to_xor3(xor3,xor1,b);
	nand nand_to_xor4(c,xor3,xor2);
endmodule
