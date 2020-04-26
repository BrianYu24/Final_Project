module DrawRoom(
	input Draw_EN, Clk, RESET,
	input [3:0] x, y,
	input defeated, Done_Draw_FB,
	
	output logic [7:0] NewDrawX, NewDrawY,
	output logic [6:0] NewSpriteX, NewSpriteY,
	output logic is_8, Draw_FB_EN, ALLDone
);


	logic[7:0] Rooms[0:120];
	
	logic [6:0] SpriteX, SpriteY;
	logic [7:0] DrawX, DrawY;
//	logic [6:0] NewSpriteX, NewSpriteY;
//	logic [7:0] NewDrawX, NewDrawY;
	logic [7:0] count;
	
//	logic Draw_FB_EN;
	logic Done;
	logic addCount;
	
	assign Done = Done_Draw_FB;
	
	
	localparam SPRITE_SIZE = 8;
	
	always_comb
	begin
		NewSpriteX = SPRITE_SIZE*SpriteX;
		NewSpriteY = SPRITE_SIZE*SpriteY;
		NewDrawX = SPRITE_SIZE*DrawX;
		NewDrawY = SPRITE_SIZE*DrawY;
	end
	

	
	enum logic [4:0] {Halted, TopLeft, TopRight, TopWallFL, TopWallSL, LeftWall, RightWall, Floor, BottomLeftFL, BottomLeftSL, BottomRightFL,BottomRightSL, BottomWallFL, BottomWallSL,FinishedRoom} State, Next_state;

	always_ff @ (posedge Clk)
	begin
		if(RESET)
		begin
			State <= Halted;
			count <= 8'b0;
		end
		else
		begin
			State <= Next_state;
		end
		
		if(State != Next_state)
			count <= 8'b0;
		else if(Done)
			count <= count+8'b1;
		
	end
	
	always_comb
	begin
		Next_state = State;
		Draw_FB_EN = 1'b1;
		DrawX = 8'b0;
		DrawY = 8'b0;
		SpriteX = 7'b0;
		SpriteY = 7'b0;
		ALLDone = 1'b0;
		
		case(State)
			Halted:
			begin
				if(Draw_EN)
					Next_state = TopLeft;
				else
					Next_state = Halted;
			end
			TopLeft:
				if(Done)
					Next_state = TopRight;
			TopRight:
				if(Done)
					Next_state = TopWallFL;
			TopWallFL:
				if(count == 7'd19)
					Next_state = TopWallSL;
			TopWallSL:
				if(count == 7'd19)
					Next_state = LeftWall;
			LeftWall:
				if(count == 7'd9)
					Next_state = RightWall;
			RightWall:
				if(count == 7'd9)
					Next_state = Floor;
			Floor:
				if(count == 7'd171)
					Next_state = BottomLeftFL;
			BottomLeftFL:
				if(Done)
					Next_state = BottomLeftSL;
			BottomLeftSL:
				if(Done)
					Next_state = BottomRightFL;
			BottomRightFL:
				if(Done)
					Next_state = BottomRightSL;
			BottomRightSL:
				if(Done)
					Next_state = BottomWallFL;
			BottomWallFL:
				if(count == 7'd19)
					Next_state = BottomWallSL;
			BottomWallSL:
				if(count == 7'd19)
					Next_state = FinishedRoom;
			FinishedRoom:
				Next_state = Halted;
		endcase
		
		case(State)
			Halted:
			begin
				Draw_FB_EN = 1'b0;
			end
			TopLeft:
			begin
				DrawY = 8'd0;
				DrawX = 8'd0;
				SpriteY = 7'd0;
				SpriteX = 7'd0;
				ALLDone = 1'b0;
				
			end
			TopRight:
			begin
				DrawY = 8'd20;
				DrawX = 8'd0;
				SpriteY = 7'd0;
				SpriteX = 7'd3;
			end
			TopWallFL:
			begin
				DrawY = 8'd0;
				DrawX = 8'd1*count;
				SpriteY = 7'd0;
				SpriteX = 7'd1;
			end
			TopWallSL:
			begin
				DrawY = 8'd1;
				DrawX = 8'd1*count;
				SpriteY = 7'd1;
				SpriteX = 7'd1;
			end
			LeftWall:
			begin
				DrawY = 8'd1*count;
				DrawX = 8'd0;
				SpriteY = 7'd1;
				SpriteX = 7'd0;
			end
			RightWall:
			begin
				DrawY = 8'd1*count;
				DrawX = 8'd20;
				SpriteY = 7'd1;
				SpriteX = 7'd0;
			end
			Floor:
			begin
				DrawY = 8'd2+(count/19);
				DrawX = 8'd1+(count%19);
				SpriteY = 7'd2;
				SpriteX = 7'd3;
			end
			BottomLeftFL:
			begin
				DrawY = 8'd11;
				DrawX = 8'd0;
				SpriteY = 7'd0;
				SpriteX = 7'd4;
			end
			BottomLeftSL:
			begin
				DrawY = 8'd12;
				DrawX = 8'd0;
				SpriteY = 7'd1;
				SpriteX = 7'd4;
			end
			BottomRightFL:
			begin
				DrawY = 8'd11;
				DrawX = 8'd20;
				SpriteY = 7'd0;
				SpriteX = 7'd5;
			end
			BottomRightSL:
			begin
				DrawY = 8'd12;
				DrawX = 8'd20;
				SpriteY = 7'd1;
				SpriteX = 7'd5;
			end
			BottomWallFL:
			begin
				DrawY = 8'd11;
				DrawX = 8'd1*count;
				SpriteY = 7'd0;
				SpriteX = 7'd1;
			end
			BottomWallSL:
			begin
				DrawY = 8'd12;
				DrawX = 8'd1*count;
				SpriteY = 7'd1;
				SpriteX = 7'd1;
			end
			FinishedRoom:
			begin
				ALLDone = 1'b1;
			end
		endcase
	end
	

	
	
	

	
	
endmodule




