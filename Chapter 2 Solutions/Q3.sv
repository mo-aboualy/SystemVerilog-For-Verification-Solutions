module my_array_tb;

initial begin

bit [11:0] my_array [4]  = '{12'h012 , 12'h345 , 12'h678 , 12'h9AB};

for (int i = 0; i< $size(my_array); i++)begin
$display("my_array[%0d][5:4] = %b", i , my_array[i][5:4]);
end

foreach(my_array[i]) begin
$display("my_array[%0d][5:4] = %b", i , my_array[i][5:4]);
end
end
endmodule