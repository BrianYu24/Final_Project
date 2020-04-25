/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  SpriteSheet
(
		input [13:0] read_address,
		input  Clk, is_8,
		output logic [4:0] data_Out8[0:63],
		output logic [4:0] data_Out12[0:143]
);

// mem has width of 3 bits and a total of 400 addresses
logic [4:0] mem [0:11519];

initial
begin
	 $readmemh("sprite_bytes/tetris_I.txt", mem);
end


always_ff @ (posedge Clk) begin
	
	case (is_8)
	1'b1: 
		for (int i = 0; i<8; i++)
		begin
			for (int j = 0; j<8;  j++)
			begin
				data_Out8[i*8+j] <= mem[read_address+i*800+j];
			end
		end
		
	1'b0: 
		for (int i = 0; i<12; i++)
		begin
			for (int j = 0; j<12;  j++)
			begin
				data_Out8[i*8+j] <= mem[read_address+i*800+j];
			end
		end	
	
end

endmodule
