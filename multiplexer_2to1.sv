//2:1 multiplexer with 4-bit inputs-outputs using conditional op.
module mux_2to1(
  input logic[3:0] in1,
  input logic[3:0] in2,
  input logic[3:0] sel,
  output logic[3:0] out
);
  
  //conditional operator(?:) for mux
  always_comb begin
    out = sel ? in2 : in1;
  end
endmodule