module bitwiseNandExample;
  logic[3:0] a = 4'b1101;
  logic[3:0] b = 4'b1011;
  logic[3:0] result;
  
  initial begin
    result = ~(a & b);
    $display("Bitwise NAND: ~(%b & %b) = %b", a, b, result);
  end
endmodule