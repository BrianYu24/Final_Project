module Draw_Frame_Buffer(
	input CLK,
	input [9:0] DrawX, DrawY,
	input [6:0] SpriteX, SpriteY,
	input size, is_8
	
)

	logic [13:0] read_address;
	logic [18:0] write_address;
	logic [4:0] palette8 [0:63];
	logic [4:0] palette12 [0:143];
	logic [4:0] out;
	logic we;
	
	assign read_address = SpriteY*7'd96 + SpriteX;
	assign write_address = DrawY*10'd800 + DrawX;

	SpriteSheet ss(
		.read_address, .Clk(CLK),.is_8, .data_Out8(palette8), .data_Out12(palette12)
	);
	
	
	
	always_comb
	begin
	case (is_8)
	1'b1:
		for (int i = 0; i <64; i++)
		begin
			if (palette8[i] == 5'b0)
				we = 1'b0;
			else
				we = 1'b1;
		end
	
	1'b0:
		for (int i = 0; i <144; i++)
		begin
			if (palette12[i] == 5'b0)
				we = 1'b0;
			else
				we = 1'b1;
		end
	default:
		we = 1'b1;
		
		
	end
	
	///////resize here
	
	
	FrameBuffer(
		.data_In8(palette8),.data_In12(palette12), .write_address,.read_address(write_address), .we, .Clk(CLK),.is_8, .data_Out(out)
	);
	
	
endmodule
