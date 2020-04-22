module DrawRoom(
	input Draw_EN, CLK
	input [3:0] x, y,
	input defeated
)

	logic[7:0] Rooms[0:120];

	Draw_Frame_Buffer(.CLK,.DrawX(0,0), .DrawY(), .SpriteX(), SpriteY(),.size());
	
	
	
module Draw_Frame_Buffer(
	input CLK,
	input [9:0] DrawX, DrawY,
	input [6:0] SpriteX, SpriteY,
	input size
	
)
	
	
	

	
	
endmodule




