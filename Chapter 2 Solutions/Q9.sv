module header_tb;

  typedef bit [6:0] new_type;
  typedef struct packed {new_type header, cmd, data, crc;} my_struct;

  my_struct header1;

  initial begin
    header1.header = 7'h5A;
    $display("header1.header = %h", header1.header);
    $display("packet = %h", header1);
  end

endmodule