module bitwiseNorExample;
  logic[3:0] a = 4'b1101;
  logic[3:0] b = 4'b1011;
  logic[3:0] result;
  
  initial begin
    result = ~(a | b);
    $display("Bitwise NOR: ~(%b | %b) = %b", a, b, result);
  end
endmodule