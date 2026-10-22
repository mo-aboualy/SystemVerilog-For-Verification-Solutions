`timescale 1ns/1ps
module alu_tb;
  typedef enum bit [1:0] {
    ADD    = 2'b00,
    SUB    = 2'b01,
    INVERT = 2'b10,
    OR     = 2'b11
  } opcode_e; // a. user-defined 2-bit type

  int      A, B;
  opcode_e opcode;  // b. create a variable of the user-defined type

  // d. instantiate the ALU (opcode is the 2-bit input)
  ALU dut (.A(A), .B(B), .opcode(opcode));

  initial begin
    A = 8;
    B = 3;

    // c. loop through all opcode values, 10 ns each
    opcode = opcode.first();
    do begin
      $display("t=%0t opcode = %s (%0d)", $time, opcode.name(), opcode);
      #10;
      opcode = opcode.next();
    end while (opcode != opcode.first());
  end

endmodule