module associative_array_tb;

initial begin
bit[23:0] a [bit [19:0]]; // 20-bit keys (address), 24-bit values (word)
a[20'h00000] = 24'hA50400; // reset vector: jump to 0x400
a[20'h00400] = 24'h123456; // instruction 1
a[20'h00401] = 24'h789ABC; // instruction 2
a[20'hFFFFF] = 24'h0F1E2D; // ISR at max address (2^20 - 1)

foreach (a[i]) begin
    $display("a[%h] = %h", i, a[i]); // Display each key-value pair in the associative array 'a'.

end
$display("a.size = %0d", a.size); // Display the current size of the associative array 'a', which is 4 after the assignments.
end

endmodule