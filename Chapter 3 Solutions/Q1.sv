module Question_1;

  int   arr[512];
  bit [8:0] addr;

  function automatic void print_int(int val);
    $display("time = %0t, value = %0d", $time, val);
  endfunction

  task automatic my_task(const ref int a[512], input bit [8:0] address);
    print_int(a[--address]);
  endtask

  initial begin
    arr[arr.size()-1] = 5;   // (c) last location = 5
    my_task(arr, addr);      // (d) addr is 0 by default
  end

endmodule