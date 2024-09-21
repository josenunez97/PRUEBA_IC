
module seeg7 {
  input wire [3:0] digit,
  output reg [6:0] segments
};

  always @(') begin
    case (digit)
      4'd0: segments = 7'b0000000;
      4'd1: segments = 7'b0001110; //J
      4'd2: segments = 7'b0111111; //O
      4'd3: segments = 7'b1101101; //S
      4'd4: segments = 7'b1111001; //E
      4'd5: segments = 7'b1101101; //S
      4'd6: segments = 7'b1110111; //A
      4'd7: segments = 7'b0111110; //U
      4'd8: segments = 7'b0111000; //L
      default: segments = 7'b0000000;
    endcase
  end
endmodule
