// Group 2: Raj Patel, Zachary Rouviere, Evan Waxman
// Experiement 11 Part 3
// 12/6/21

// Description: This is a test bench for the FSM for part 3. This test bench will genearte 4 different 
// test cases (A to D) based on our group 2 key of 5'b11110 and the lab document. Due to the blackhole state the 
// test cases have to be performed inviducally. To test a certian case uncomment the case below.

`timescale 1 ns/10 ps

module FSM_tb;

    reg x,clk;
    wire out;

    FSM uut0 (.clk(clk), .x(x), .out(out));

    initial begin

        clk = 0;

        // Group 2 key 5’b11110
        // insert test cases with #20 between for clk

        // Case A ~P1O->~P2O->~P3O->~P4O->~P5O

        x = 1'b0
        #20
        x = 1'b0
        #20
        x = 1'b0
        #20
        x = 1'b0
        #20
        x = 1'b1
        #20

        // Case B P1O->~P2O->~P3O->~P4O->~P5O

        // x = 1'b1
        // #20
        // x = 1'b0
        // #20
        // x = 1'b0
        // #20
        // x = 1'b0
        // #20
        // x = 1'b1
        // #20

        // Case C P1O->P2O->P3O->P4O->~P5O

        // x = 1'b1
        // #20
        // x = 1'b1
        // #20
        // x = 1'b1
        // #20
        // x = 1'b1
        // #20
        // x = 1'b1
        // #20

        // Case D P1O->P2O->P3O->P4O->P5O

        // x = 1'b1
        // #20
        // x = 1'b1
        // #20
        // x = 1'b1
        // #20
        // x = 1'b1
        // #20
        // x = 1'b0
        // #20

        // x for original FSM design
        x = 1'b1
        #20
            
    end


    always begin
        
    
        #10 clk = !clk; // toggles clk and add 10 delay

     end 



endmodule