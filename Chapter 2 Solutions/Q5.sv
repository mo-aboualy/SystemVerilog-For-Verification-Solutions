module my_array_2_tb;

initial begin
bit [4:0] [30:0] my_array2;
my_array2[4][30] = 1'b1 ; // Initialize element at index [4][30] to 1 -- LEGAL
my_array2[29][4] = 1'b1 ; // ILLEGAL: Index 29 is out of bounds for the first dimension of my_array2 which has a size of 5.
my_array2[3] = 32'b1 ; // LEGAL: Assigning a 32-bit value to an entire row of the array my_array2, which is a 2D array of bit elements. Each element in the first dimension is a 31-bit vector, so you can assign a single 32-bit value to an entire row.
end
endmodule