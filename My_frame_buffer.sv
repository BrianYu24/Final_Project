/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  FrameBuffer
(
		input [4:0] data_In,
		input [14:0] write_address, read_address,
		input we, Clk,

		output logic [4:0] data_Out
);

// mem has width of 3 bits and a total of 400 addresses
logic [4:0] mem[0:17471];
//logic [4:0] mem[0:279551];

initial
begin
	 $readmemh("sprite_bytes/white.txt", mem);
	 //$readmemh("sprite_bytes/DungeonMockup.txt", mem);
	 //$readmemh("sprite_bytes/CompleteSpriteSheet.txt", mem);
end


//resize here

always_ff @ (posedge Clk) begin
	if (we)
	begin
		if (data_In != 5'b0)
			mem[write_address] <= data_In;
//		else
//			mem[write_address] <= 5'd8;
	end
	
	data_Out<= mem[read_address];
end


/*
module Draw_Frame_Buffer(
	input CLK,
	input [9:0] DrawX, DrawY,
	input [6:0] SpriteX, SpriteY,
	input size
	
)
*/

endmodule
