//meaning of non-blocking assignment is, it works like real clock mechanism. so it assigns the value of input to the output when function ends.

module d_flipflop(
  input logic clk,    //clock signal input.
  input logic[3:0] d, //input of D Flip Flop.
  output logic[3:0] q //output q.
);
  
  always_ff @(posedge clk) //trigger on each positive edge of clock signal.
    q <= d; //non-blocking assignment, q gets the value of d.
endmodule