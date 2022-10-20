module gray2bin (
  input [3:0] gray,
  output [3:0] bin);

  wire not_gray3, not_gray2, not_gray1, not_gray0;
  
  wire aux_b21, aux_b22;'
  wire aux_b31, aux_b32, aux_b33, aux_b34;
  wire aux_b41, aux_b42, aux_b43, aux_b44, aux_b45, aux_b46, aux_b47, aux_b48;
  
  not gray3_inv (not_gray3, gray[3]);
  not gray2_inv (not_gray2, gray[2]);
  not gray1_inv (not_gray1, gray[1]);
  not gray0_inv (not_gray0, gray[0]);

  and aux_b21(aux_b21, gray[3],not_gray2);
  and aux_b22(aux_b22, not_gray3, gray[2]);

  and aux_b31(aux_b31, gray[1], not_gray2, not_gray3);
  and aux_b32(aux_b32, gray[2], not_gray1, not_gray3);
  and aux_b33(aux_b33, gray[1], gray[2], gray[3]);
  and aux_b34(aux_b34, gray[3], not_gray1, not_gray2);

  and aux_b41(aux_b41, gray[0], not_gray1, not_gray2, not_gray3); 
  and aux_b42(aux_b42, gray[1], not_gray0, not_gray2, not_gray3); 
  and aux_b43(aux_b43, gray[2], not_gray0, not_gray1, not_gray3); 
  and aux_b44(aux_b44, gray[1], gray[2], gray[0], not_gray3); 
  and aux_b45(aux_b45, gray[2], gray[0], gray[3], not_gray1); 
  and aux_b46(aux_b46, gray[2], gray[3], gray[1], not_gray0); 
  and aux_b47(aux_b47, gray[3], not_gray1, not_gray2, not_gray0);
  and aux_b48(aux_b48, not_gray2, gray[0], gray[1], gray[3]);

  buf(bin[3], gray[3]);
  or b2(bin[2], aux_b21,aux_b22);
  or b1(bin[1], aux_b31, aux_b32, aux_b33, aux_b34);
  or b0(bin[0], aux_b41, aux_b42, aux_b43, aux_b44, aux_b45, aux_b46, aux_b47, aux_b48);

  initial begin
    $monitor("%b <-> %b", gray, bin);
  end
endmodule