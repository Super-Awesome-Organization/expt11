// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 11 Part 3
// 12/6/21

// Description: This is a modified module of the provided FSM provided. The modification to this module adds 
//	obfuscation states to the orginal FSM. If any part of the key is incorrect the next state will be blackhole
// state where you will not be able to exit it once its entered. The black hole state is 4'b1111 and the key
// is 5’b11110.


//key 5’b11110

module FSM(x, clk, out);
	input  x, clk;
	output reg out;
	reg [3:0] state;
	
	initial state = 4'b1000; // inital state changed to obfuscation state
	
  	always @(posedge clk) begin
		case (state)
			// Blackhole state is 4'b1111
			// Obfuscation FSM
			4'b1000: if (x==1) begin state = 4'b1001; out = 1'b0; end else begin state = 4'b1111; out = 1'b0; end
			4'b1001: if (x==1) begin state = 4'b1010; out = 1'b0; end else begin state = 4'b1111; out = 1'b0; end
			4'b1010: if (x==1) begin state = 4'b1011; out = 1'b0; end else begin state = 4'b1111; out = 1'b0; end
			4'b1011: if (x==1) begin state = 4'b1100; out = 1'b0; end else begin state = 4'b1111; out = 1'b0; end
			4'b1100: if (x==0) begin state = 4'b0000; out = 1'b0; end else begin state = 4'b1111; out = 1'b0; end
			4'b1111: 		   begin state = 4'b1111; out = 1'b0; end 


			// original FSM
			4'b0000: if (x==1) begin state = 4'b0010; out = 1'b0; end else begin state = 4'b0001; out = 1'b0; end
			4'b0001: if (x==1) begin state = 4'b0010; out = 1'b0; end else begin state = 4'b0011; out = 1'b0; end
			4'b0010: if (x==1) begin state = 4'b0100; out = 1'b0; end else begin state = 4'b0011; out = 1'b0; end
			4'b0011: 		   begin state = 4'b0100; out = 1'b0; end 
			4'b0100: if (x==1) begin state = 4'b0000; out = 1'b1; end else begin state = 4'b0001; out = 1'b0; end
		endcase
	end


endmodule /* FSM */