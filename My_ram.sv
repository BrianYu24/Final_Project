/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  SpriteSheet
(
		input [14:0] read_address,
		input  Clk,
		output logic [4:0] data_Out
);

// mem has width of 3 bits and a total of 400 addresses
//logic [4:0] mem [0:17471];
logic [4:0] mem [0:11519];

initial
begin
	 //$readmemh("sprite_bytes/DungeonMockup.txt", mem);
	 $readmemh("sprite_bytes/CompleteSpriteSheet.txt", mem);
end


always_ff @ (posedge Clk) begin
	
	data_Out <= mem[read_address];
	
end

endmodule
