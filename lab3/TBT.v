`define IDLE 1'd0
`define SUM 1'd1
`define UP 5'd2
`define DOWN 5'd4
`define LEFT 5'd3
`define RIGHT 5'd1

module adderSubtractor(a, b, cin, cout, sum) ;
    parameter n = 5;
    input [n - 1 : 0] a, b;
    input cin;
    output [n - 1 : 0] sum;
    output cout;
	wire [n - 1 : 0] p = a ^ b;
	wire [n - 1 : 0] g = a & b;
	wire [n - 1 : 0] c = {g | (p & c[n - 1 : 0]) , cin};
    wire [n - 1 : 0] sum = p ^ c[n - 1 : 0];
    wire cout = c[n];
endmodule

module TBT(clk, rst, start, data, en, addr, fin, result);
    input clk, rst, start;
    input [4 : 0] data;
    output en, fin;
    output [4 : 0] addr, result;

	reg state,next_state;
	reg [31 : 0] num,next_num;
	reg [31 : 0] length,next_length;
	reg [4 : 0]  ans,next_ans;
	wire [4 : 0]  block [8 : 0];
	reg  [3 : 0] current,next;
	assign block[0] = $signed(5'b11110);
	assign block[1] = $signed(5'b11111);
	assign block[2] = $signed(5'b00010);
	assign block[3] = $signed(5'b11111);
	assign block[4] = $signed(5'b00000);
	assign block[5] = $signed(5'b00001);
	assign block[6] = $signed(5'b00010);
	assign block[7] = $signed(5'b00001);
	assign block[8] = $signed(5'b11110);

	//adderSubtractor adder(.a(ans[4:0]),.b(block[4:0]),.cin(0),.cout(),.sum(ans[4:0]))
	always@(posedge rst or posedge clk)begin
		if(rst == 1'b1)begin
			state   <= `IDLE;
			num     <= 5'd31;
			length  <= 5'd0;
			ans     <= 5'd0;
			current <= 4'd4;
		end
		else begin
			state   <= next_state;
			num     <= next_num;
			length  <= next_length;
			ans     <= next_ans;
			current <= next;
		end
	end

	always@(negedge clk)begin
        next_num    = num + 5'd1;
        next_length = length;
        next_ans    = ans;
		next        = current;
        next_state  = state;
        case(state)
            `IDLE:begin
                next_state  = (start == 1'b1)? `SUM : `IDLE;
                next_num    = (start == 1'b1)? 5'd0 : 5'd31;
                next_length = (start == 1'b1)? data : length;
				next        =  4'd4;
            end
            `SUM:begin
				case(data)
					`UP:begin
						//$display("Original_UP current = %d", current);
                     	next = current - 4'd3;
						next_ans = ans+ block[next];
                     	//$display("UP current = %d", current);
                     end
                     `DOWN:begin
                     	next = current + 4'd3;
                     	next_ans = (num < length)? ans + block[next] : ans;
                     	//$display("DOWN current = %d", current);
                     end
                     `LEFT:begin
                     	next = current - 4'd1;
                     	next_ans = (num < length)? ans + block[next] : ans;
                     	//$display("LEFT current = %d", current);
                     end
                     `RIGHT:begin
                     	next = current + 4'd1;
                     	next_ans = (num < length)? ans + block[next] : ans;
                     	//$display("RIGHT current = %d", current);
                     end
				endcase
			end
    	endcase
	end

	assign en = 1'b1;
    assign addr = num;
    assign fin = (start == 1'b1 && num == length)? 1'b1 : 1'b0;
    assign result = (fin == 1'b1)? ans : 5'd0;

endmodule
