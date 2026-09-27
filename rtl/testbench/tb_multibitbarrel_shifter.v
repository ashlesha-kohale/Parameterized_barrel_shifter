module tb_multibitbarrel_shifter;

reg [7:0] data_in;
reg [2:0] shift;
reg direction;

wire [7:0] data_out;

multibitbarrel_shifter uut (
    .data_in(data_in),
    .shift(shift),
    .direction(direction),
    .data_out(data_out)
);
integer i;
initial 
begin
	// Left shift
    direction = 0;
    data_in = 8'b10110101;
	for(i=0;i<8;i=i+1)
		begin
			shift=i;
			#10;
		end 
	// Right Shift
	direction=1;
	
		for(i=0;i<8;i=i+1)
			begin
				shift=i;
				#10;
			end
			$stop;
end
endmodule
