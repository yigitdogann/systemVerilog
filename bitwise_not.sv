module bitwiseNotExample;
  logic[3:0] a = 4'b1101;
  logic[3:0] result;
  
  initial begin
    result = ~a;
    $display("Bitwise NOT: ~%b = %b", a, result);
  end
endmodule