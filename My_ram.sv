/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  SpriteSheet
(
		input [13:0] read_address,
		input  Clk,
		output logic [4:0] data_Out,
);

// mem has width of 3 bits and a total of 400 addresses
logic [4:0] mem [0:11519];

initial
begin
	 $readmemh("sprite_bytes/tetris_I.txt", mem);
end


always_ff @ (posedge Clk) begin
	
	data_Out <= mem[read_address];
	
end

endmodule
