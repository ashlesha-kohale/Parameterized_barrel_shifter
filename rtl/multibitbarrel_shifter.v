module multibitbarrel_shifter #(
parameter WIDTH = 8
)(
    input  [WIDTH-1:0] data_in,
    input  [2:0] shift,
    input        direction,    // 0 = left, 1 = right
    output reg [WIDTH-1:0] data_out
);

always @(*) begin
    if (direction == 1'b0)
        data_out = data_in << shift;   // Left shift
    else
        data_out = data_in >> shift;   // Right shift
end

endmodule
