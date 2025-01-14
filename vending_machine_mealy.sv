// Mealy machine code for a vending machine

module mealy_vending_machine(
  input logic clk,
  input logic rst_n,
  input logic coin_5,
  input logic coin_10,
  output logic candy_dispenser
)
  
  //state encoding
  typedef enum logic[1:0]{
    S0 = 2'b00, //total 0cents
    S1 = 2'b01, //total 5cents
    S2 = 2'b10 //total 10cents
  }state_t;
  
  state_t current_state, next_state;
  
  //combinational logic for state transitions and output
  always_comb begin
    //default values
    next_state = current_state;
    candy_dispenser = 0;
    
    case(current_state)
      S0:begin
        if(coin_5)begin
          next_state = S1;
        end else if(coin_10)begin
          next_state = S2;
        end
      end
      
      S1:begin
        if(coin_5)begin
          next_state = S2;
        end else if(coin_10)begin
          next_state = S0;
          candy_dispenser = 1;
        end
      end
      
      S2:begin
        if(coin_5)begin
          next_state = S0;
          candy_dispenser = 1;
        end else if(coin_10)begin
          next_state = S0;
          candy_dispenser = 1; //5cents change
        end
      end
      
      default: next_state = S0;
    endcase
  end
  //combinational logic ends here
  
  //sequential logic for state register
  always_ff @(posedge clk or negedge rst_n)begin
    if(!rst_n)
      current_state <= S0;
    else
      current_state <= next_state;
  end
  
endmodule