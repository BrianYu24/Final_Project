//module Draw_from_Frame_Buffer(
//	input[9:0] DrawX, DrawY,
//	input CLK,
//	output[7:0] VGA_R, VGA_G, VGA_B
//);
//	logic[4:0] palette;
//	logic[18:0] read_address;
//
//	
//	assign read_address = DrawX+DrawY*10'd800;
//	
//	
//	FrameBuffer FB (
//		.data_In(5'b0), .write_address(19'b0), .read_address, .we(1'b0), .clk(CLK),.data_Out(palette)
//	);
//	
//	
//	
//	Palette p(
//		.*, .color(palette)
//	);
//	
//	
//endmodule
