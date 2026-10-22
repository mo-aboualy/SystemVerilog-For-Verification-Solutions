module Q10_tb;

  typedef bit [3:0] nibble;                      // a. user-defined 4-bit type

  real     r = 4.33;                             // b.
  shortint i_pack;                               // c.
  nibble   k [4] = '{4'h0, 4'hF, 4'hE, 4'hD};    // d. unpacked, 4 elements

  initial begin
    // e. print k
    $display("k = %p", k);                       // '{0, 15, 14, 13}

    // f. stream k into i_pack right to left, bit basis
    i_pack = { << {k}};
    $display("f: i_pack = %h", i_pack);          // b7f0

    // g. stream k into i_pack right to left, nibble basis
    i_pack = { << 4 {k}};
    $display("g: i_pack = %h", i_pack);          // def0

    // h. convert real r to a nibble, assign to k[0], print k
    k[0] = nibble'(r);                           // rounds 4.33 to 4
    $display("k = %p", k);                       // '{4, 15, 14, 13}
  end

endmodule