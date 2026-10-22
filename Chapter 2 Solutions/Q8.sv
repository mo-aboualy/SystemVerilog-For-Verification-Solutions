module queue_manipulation_tb;

  initial begin
    int  sum;
    byte mm[$];
    byte q[$] = {2, -1, 127};   // 3-byte queue (8-bit signed elements)
    byte q_sorted[$];
    byte q_rsorted[$];
    byte positive_values[$];
    int  negative_idx[$];

    // b. sum in decimal (cast to int so it doesn't wrap at 8 bits)
    sum = q.sum() with (int'(item));
    $display("sum = %0d", sum);                          // 128

    // c. min and max (each returns a one-element queue)
    mm = q.max();  $display("max = %0d", mm[0]);         // 127
    mm = q.min();  $display("min = %0d", mm[0]);         // -1

    // d. sort a copy, then print it
    q_sorted = q;
    q_sorted.sort();
    $display("sorted = %p", q_sorted);                   // '{-1, 2, 127}

    // e. indices of negative values
    negative_idx = q.find_index with (item < 0);
    $display("negative indices = %p", negative_idx);     // '{1}

    // f. positive values
    positive_values = q.find with (item > 0);
    $display("positive values = %p", positive_values);   // '{2, 127}

    // g. reverse sort a copy
    q_rsorted = q;
    q_rsorted.rsort();
    $display("reverse sorted = %p", q_rsorted);          // '{127, 2, -1}
  end

endmodule