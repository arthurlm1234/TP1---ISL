module gray2bin_testbench;
  reg[3:0] gray_in;

  wire[3:0] bin_out;

  gray2bin uut(gray_in, bin_out);

  initial
 	begin
      $dumpfile("dump.vcd"); $dumpvars;
      $display("gray <-> bin");

      gray_in = 4'b0000; #1;
      gray_in = 4'b0001; #1;
      gray_in = 4'b0011; #1;
      gray_in = 4'b0010; #1;
      gray_in = 4'b0110; #1;
      gray_in = 4'b0111; #1;
      gray_in = 4'b0101; #1;
      gray_in = 4'b0100; #1;
      gray_in = 4'b1100; #1;
      gray_in = 4'b1101; #1;
      gray_in = 4'b1111; #1;
      gray_in = 4'b1110; #1;
      gray_in = 4'b1010; #1;
      gray_in = 4'b1011; #1;
      gray_in = 4'b1001; #1;
      gray_in = 4'b1000; #1;
    end
endmodule