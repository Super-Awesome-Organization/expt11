// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 11 Part 2
// 12/6/21

// Description:
//	c499_tb.v is a testbench to test functionality of c499.v
`timescale 1ns/1ns

module c499_tb ();

 	reg [40:0] in;
    reg [15:0] keyinput2;
    wire [31:0] out;

    c499 uut0 (
            .keyinput2(keyinput2),.N1(in[0]),.N5(in[1]),.N9(in[2]),.N13(in[3]),.N17(in[4]),.N21(in[5]),.N25(in[6]),.N29(in[7]),.N33(in[8]),.N37(in[9]),
             .N41(in[10]),.N45(in[11]),.N49(in[12]),.N53(in[13]),.N57(in[14]),.N61(in[15]),.N65(in[16]),.N69(in[17]),.N73(in[18]),.N77(in[19]),
             .N81(in[20]),.N85(in[21]),.N89(in[22]),.N93(in[23]),.N97(in[24]),.N101(in[25]),.N105(in[26]),.N109(in[27]),.N113(in[28]),.N117(in[29]),
             .N121(in[30]),.N125(in[31]),.N129(in[32]),.N130(in[33]),.N131(in[34]),.N132(in[35]),.N133(in[36]),.N134(in[37]),.N135(in[38]),.N136(in[39]),
             .N137(in[40]),.N724(out[0]),.N725(out[1]),.N726(out[2]),.N727(out[3]),.N728(out[4]),.N729(out[5]),.N730(out[6]),.N731(out[7]),.N732(out[8]),
             .N733(out[9]),.N734(out[10]),.N735(out[11]),.N736(out[12]),.N737(out[13]),.N738(out[14]),.N739(out[15]),.N740(out[16]),.N741(out[17]),.N742(out[18]),
            .N743(out[19]),.N744(out[20]),.N745(out[21]),.N746(out[22]),.N747(out[23]),.N748(out[24]),.N749(out[25]),.N750(out[26]),.N751(out[27]),.N752(out[28]),
            . N753(out[29]),.N754(out[30]),.N755(out[31])

    );


	`define DELAY(TIME_CLK) #(10*TIME_CLK); //delays one clk cycle, TIME_CLK = number of clk cycles to delay


	initial begin
		$display($time, "- Starting Sim");
		`DELAY(100)

		in = 41'h45678969;
		keyinput2 = 16'b0111100101011110;
		`DELAY(100)
		$display("Correct key: %0h, Input: %0h, Correct output: %0h", keyinput2, in, out);
		`DELAY(100)

		repeat(10) begin
			keyinput2 = $random;
			`DELAY(100)
			$display("Key: %0h, Input: %0h, Output: %0h", keyinput2, in, out);
			keyinput2 = 0;
			`DELAY(100)
		end

        `DELAY(100)
        $display($time, "- Ending Sim");
		$stop;
	end

endmodule