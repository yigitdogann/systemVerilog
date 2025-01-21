//CPU ALU
module alu(
  input logic[31:0] a,
  input logic[31:0] b,
  input logic[31:0] alu_control,
  output logic[31:0] result
)
  
  always_comb begin
    case(alu_control)
      4'b0000: result=a&b;
	  4'b0001: result=a|b;
      4'b0010: result=a+b;
      4'b0011: result=a-b;
      4'b0100: result=~(a|b);
      default: result=0;
    endcase
  end
endmodule