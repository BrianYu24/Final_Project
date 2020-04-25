module DrawRoom(
	input Draw_EN, Clk
	input [3:0] x, y,
	input defeated
)

	logic[7:0] Rooms[0:120];
	
	logic [6:0] SpriteX, SpriteY;
	logic we;
	
	logic [4:0] data_Out8;
	logic [4:0] data_Out8Next;
	
	localparam SPRITE_SIZE = 8;
	
	SpriteSheet(.Clk, .read_address(), .is_8(1'b1), .data_Out8);
	Draw_Frame_Buffer(.Clk, .data_In8(data_Out8Next), .write_address(), .we(), .is_8(1'b1));
	
	enum logic [4:0] {Halted, TopLeft, TopRight, TopWallFL, TopWallSL, LeftWall, RightWall, Floor, BottomLeftFL, BottomLeftSL, BottomRightFL,BottomRightSL, BottomWallFL, BottomWallSL} State, Next_state;

	always_ff @ (posedge CLK)
	begin
		if(RESET)
		begin
			State <= Halted;
			count <= 4'b0;
		end
		else
		begin
			State <= Next_state;
			data_Out8Next <= data_Out8;
		end
	end
	
	always_comb
	begin
		Next_state = State;
		
		case(State)
			
	end
	
module  FrameBuffer
(
		input [4:0] data_In8[0:63],
		input [4:0] date_In12[0:143],
		input [18:0] write_address, read_address,
		input we, Clk,is_8

		output logic [4:0] data_Out
);

module  SpriteSheet
(
		input [13:0] read_address,
		input  Clk, is_8,
		output logic [4:0] data_Out8[0:63],
		output logic [4:0] data_Out12[0:143]
);
	
	
	

	
	
endmodule




