/*
1-always block will work at positive edge of clock signal or reset.
2-if reset is true, then reset data. else, data will be updated with the value of next data.
3-"<=" used to assign in the always. because it works like sequential logic. updates values at the end of the function.
*/

module logic_example(input logic clk, input logic reset, input logic [3:0]
next_data, output logic [3:0] data);

 always @(posedge clk or posedge reset) begin
   
	if (reset)
		data <= 4'b0000; // Reset condition
	else
		data <= next_data; // Store next_data on clock edge
 end
endmodule