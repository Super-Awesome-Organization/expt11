module FSM(x, clk, out);
	input  x, clk;
	output reg out;
	reg [3:0] state;
	
	initial state = 4'b0000;
	
  	always @(posedge clk) begin
		case (state)
			4'b0000: if (x==1) begin state = 4'b0010; out = 1'b0; end else begin state = 4'b0001; out = 1'b0; end
			4'b0001: if (x==1) begin state = 4'b0010; out = 1'b0; end else begin state = 4'b0011; out = 1'b0; end
			4'b0010: if (x==1) begin state = 4'b0100; out = 1'b0; end else begin state = 4'b0011; out = 1'b0; end
			4'b0011: 		   begin state = 4'b0100; out = 1'b0; end 
			4'b0100: if (x==1) begin state = 4'b0000; out = 1'b1; end else begin state = 4'b0001; out = 1'b0; end
		endcase
	end


endmodule /* FSM */