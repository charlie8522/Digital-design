`define READY_TO_WORK 3'b100
`define WORKING       3'b101

`define PUSH 	  2'b00
`define POP  	  2'b01
`define PUSH_PREV 2'b10
`define IDLE 	  2'b11

module queue(clk,reset,go,cmd,r_num,ready,w_en,r_en,full,almost_full,empty,almost_empty,error,w_num,addr);
	input clk,reset,go;
	input [17:0]cmd;
	input [15:0]r_num;

	output ready;
	output w_en,r_en;
	output full,almost_full,empty,almost_empty,error;
	output [15:0]w_num;
	output [4:0]addr;

	reg state,next_state;
	reg QAction,next_QAction;
	reg pop_counter,next_pop_counter;
	reg [15:0]r_value,w_value,next_w_value;
	reg [4:0]position,next_position;
	reg handling;

	always@(posedge clk or posedge reset)begin
		if (reset == 1'b1)begin
			state       <= `READY_TO_WORK;
			QAction     <= `IDLE;
			r_value     <= 16'd0;
			w_value     <= 16'd0;
			position    <= 5'd0;
			pop_counter <= 5'd0;
			handling    <= 1'd0;
			//$display("reset");
		end
		else begin
			state       <= next_state;
			QAction     <= next_QAction;
			position    <= next_position;
			pop_counter <= next_pop_counter;
			w_value     <= next_w_value;
			//$display("1STcmd: %18d",cmd[17:0]);
		end
	end

	always@(ready)begin
		next_state = state;
		case(state)
			`READY_TO_WORK:begin
				//$display("Ready");
				next_state = (go == 1'b1)? `WORKING: `READY_TO_WORK;
			end
			`WORKING:begin
				//$display("Work");
				next_QAction = QAction;
				case(QAction)
					`PUSH:begin
						 //$display("1");
						if(cmd[17:16] == `PUSH)begin
							next_QAction = `PUSH;
							handling = 1'b1;
						end
						else if(cmd[17:16] == `POP)begin
							next_QAction = `POP;
							handling = 1'b1;
						end
						else if(cmd[17:16] == `PUSH_PREV)begin
							next_QAction = `PUSH_PREV;
							handling = 1'b1;
						end
						else if(cmd[17:16] == `IDLE)begin
							next_QAction =`IDLE;
							handling = 1'b0;
                            next_state = `READY_TO_WORK;
						end
					end
			    	`POP:begin
						//$display("2");
						if(cmd[17:16] == `PUSH)begin
                             next_QAction = `PUSH;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `POP)begin
                             next_QAction = `POP;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `PUSH_PREV)begin
                             next_QAction = `PUSH_PREV;
                         	 handling = 1'b1;
                         end
                         else if(cmd[17:16] == `IDLE)begin
                             next_QAction =`IDLE;
                             handling = 1'b0;
                             next_state = `READY_TO_WORK;
                         end
					end
					`PUSH_PREV:begin
						//$display("3");
						if(cmd[17:16] == `PUSH)begin
                             next_QAction = `PUSH;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `POP)begin
                             next_QAction = `POP;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `PUSH_PREV)begin
                             next_QAction = `PUSH_PREV;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `IDLE)begin
                             next_QAction =`IDLE;
                             handling = 1'b0;
                             next_state = `READY_TO_WORK;
                         end
                     end

					`IDLE:begin
						//$display("4");
						if(cmd[17:16] == `PUSH)begin
                             next_QAction = `PUSH;
                             handling = 1'b1;
                         end
                        else if(cmd[17:16] == `POP)begin
                             next_QAction = `POP;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `PUSH_PREV)begin
                             next_QAction = `PUSH_PREV;
                             handling = 1'b1;
                         end
                         else if(cmd[17:16] == `IDLE)begin
                             next_QAction =`IDLE;
                             handling = 1'b0;
                             next_state = `READY_TO_WORK;
                         end
                     end
				endcase
			end
		endcase
	end

	always@(negedge clk)begin
		if(QAction == `PUSH)begin
			//$display("PUSH");
			next_w_value = cmd[15:0];
			next_position = position + 5'd1;
		end
		else if(QAction == `POP)begin
			 //$display("POP cmd= %18b",cmd[17:0]);
			r_value = r_num;
			next_position = position - 5'd1;
			next_pop_counter = pop_counter +5'd1;
		end
		else if(QAction == `PUSH_PREV)begin
			//$display("PUSH_PREV");
			next_position = position + 5'd1;
			w_value = r_value;
		end
		else if(QAction == `IDLE)begin
			//$display("IDLE");
		end
	end

	assign ready = (handling == 1'b0)?			  	   		   1'b1:1'b0;
	assign w_en  = ((cmd[17:16] == `PUSH)||
					(cmd[17:16] == `PUSH_PREV))? 			   1'b1:1'b0;
	assign r_en  =  (cmd[17:16] == `POP)?  					   1'b1:1'b0;
	assign full  = (position == 5'd31)?					       1:0;
	assign almost_full = (position == 5'd30)?			       1:0;
	assign empty = (position == 5'd0)?					  	   1:0;
	assign almost_empty = (position == 5'd1)?			  	   1:0;
	assign error = ((position == 5'd31 && cmd[17:16] == `PUSH) 		 ||
				    (position == 5'd0  && cmd[17:16] == `POP) 		 ||
					(pop_counter == 5'd0 && cmd[17:16] == `PUSH_PREV)||
					(position == 5'd31 && cmd[17:16] == `PUSH_PREV))? 1'b1:1'b0;
	assign w_num = w_value;
	assign addr  = position;

endmodule
