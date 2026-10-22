module queue_tb;

string street [$];

initial begin

street = {"Tejon", "Bijou", "Boulder"};
    $display("Street[0] = %s", street[0]); // Display the first element of the street queue, which is "Tejon".

    street.insert(2, "Platte"); // insert "Platte" at index 2 of the street queue. and shift the elements at index 2 and beyond to the right.
    $display("Street[2] = %s", street[2]); // Display the element at index 2 of the street queue, which is "Platte".

    street.push_front("St. Vrain"); // Add "St. Vrain" to the front of the street queue, shifting all existing elements to the right.
    $display("Street[0] = %s", street[0]); // Display the first element of the street queue, which is now "St. Vrain".
    $display("Street[2] = %s", street[2]); // Display the element at index 2 of the street queue, which is "Bijou".

    $display("pop_back = %s", street.pop_back); // Remove and display the last element of the street queue, which is "Boulder".
    $display("street.size = %d", street.size); // Display the current size of the street queue, which is now 4 after the pop_back operation.
end
endmodule