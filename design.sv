module gray_to_binary(g0,g1,g2,g3);
        
    input g0, g1, g2, g3;

    output b0,b1,b2,b3;
    
    buf(b0,g0);
    xor(b1,g0,g1),(b2,g0,g1,g2),(b3,g0,g1,g2,g3);
    //$display("%b", Y);

endmodule
