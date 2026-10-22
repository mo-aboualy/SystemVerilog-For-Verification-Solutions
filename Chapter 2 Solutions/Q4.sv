module my_array_1_tb;

initial begin
logic my_array1 [5][31];
my_array1[4][30] = 1'b1 ; // Initialize element at index [4][30] to 1 -- LEGAL
my_array1[29][4] = 1'b1 ; // ILLEGAL: Index 29 is out of bounds for the first dimension of my_array1 which has a size of 5.
my_array1[4] = 32'b1 ; // ILLEGAL: Cannot assign a 32-bit value to an entire row of the array my_array1, which is a 2D array of logic elements. Each element in the first dimension is a 32-bit vector, so you cannot assign a single 32-bit value to an entire row.
end
endmodule