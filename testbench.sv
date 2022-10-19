module gray_to_binary_test;
    reg g0,g1,g2,g3;
    wire b0, b1,b2,b3;

    gray_to_binary circuit(
        .g0(g0),
        .g1(g1),
        .g2(g2),
        .g3(g3)
    );


    initial 
        begin
            $dumpfile("dump.vcd"); $dumpvars;
            // Initialize Inputs
            g0 = 0;g1 = 0;g2 = 0;g3 = 0;
            // Wait 100 ns for global reset to finish
            #100;
            // Add stimulus here
            #50;g0 = 0;g1 = 0;g2 = 0;g3 = 1;
            #50;g0 = 0;g1 = 0;g2 = 1;g3 = 0;
            #50;g0 = 0;g1 = 0;g2 = 1;g3 = 1;
            #50;g0 = 0;g1 = 1;g2 = 0;g3 = 0;
            #50;g0 = 0;g1 = 1;g2 = 0;g3 = 1;
            #50;g0 = 0;g1 = 1;g2 = 1;g3 = 0;
            #50;g0 = 0;g1 = 1;g2 = 1;g3 = 1;
            #50;g0 = 1;g1 = 0;g2 = 0;g3 = 0;
            #50;g0 = 1;g1 = 0;g2 = 0;g3 = 1;
            #50;g0 = 1;g1 = 0;g2 = 1;g3 = 0;
            #50;g0 = 1;g1 = 0;g2 = 1;g3 = 1;
            #50;g0 = 1;g1 = 1;g2 = 0;g3 = 0;
            #50;g0 = 1;g1 = 1;g2 = 0;g3 = 1;
            #50;g0 = 1;g1 = 1;g2 = 1;g3 = 0;
            #50;g0 = 1;
            $finish;
        end
endmodule