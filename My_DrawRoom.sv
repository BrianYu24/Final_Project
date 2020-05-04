module DrawRoom(
	input Draw_EN, Clk, RESET, Start,
	input [3:0] Doors,
	input Done_Draw_FB,
	input [2:0] EnemyHealth,
	
	output logic [7:0] NewDrawX, NewDrawY,
	output logic [6:0] NewSpriteX, NewSpriteY,
	output logic is_8, ALLDone
);


	logic[7:0] Rooms[0:120];
	
	logic [6:0] SpriteX, SpriteY;
	logic [7:0] DrawX, DrawY;
//	logic [6:0] NewSpriteX, NewSpriteY;
//	logic [7:0] NewDrawX, NewDrawY;
	logic [7:0] count;
	
	logic Draw_FB_EN;
	logic Done;
	
	assign Done = Done_Draw_FB;
	assign is_8 = 1'b1;
	
	
	localparam SPRITE_SIZE = 7'd8;
	
	always_comb
	begin
		NewSpriteX = SPRITE_SIZE*SpriteX;
		NewSpriteY = SPRITE_SIZE*SpriteY;
		NewDrawX = SPRITE_SIZE*DrawX;
		NewDrawY = SPRITE_SIZE*DrawY;
	end
	

	
	enum logic [4:0] {Halted, TopLeft, TopRight, TopWallFL, TopWallSL, LeftWall, RightWall, 
							Floor, BottomLeftFL, BottomLeftSL, BottomRightFL,BottomRightSL, BottomWallFL, 
							BottomWallSL,FinishedRoom, DrawTopDoor, DrawBottomDoor, DrawLeft1Door, 
							DrawLeft2Door, DrawLeft3Door, DrawRight1Door, DrawRight2Door, DrawRight3Door, Cycle} State, Next_state;

	always_ff @ (posedge Clk)
	begin
		if(RESET | Start)
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
		
		DrawX = 8'b0;
		DrawY = 8'b0;
		SpriteX = 7'b0;
		SpriteY = 7'b0;
		
		Draw_FB_EN = 1'b0;
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
				if(count == 8'd19)
					Next_state = TopWallSL;
			TopWallSL:
				if(count == 8'd19)
					Next_state = LeftWall;
			LeftWall:
				if(count == 8'd10)
					Next_state = RightWall;
			RightWall:
				if(count == 8'd10)
					Next_state = Floor;
			Floor:
				if(count == 8'd171)
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
				if(count == 8'd19)
					Next_state = BottomWallSL;
			BottomWallSL:
				if(count == 8'd19)
					Next_state = FinishedRoom;
					
			DrawTopDoor:
				if (Done)
					Next_state = DrawBottomDoor;
			DrawBottomDoor:
				if (Done)
					Next_state = DrawLeft1Door;
			DrawLeft1Door:
				if (Done)
					Next_state = DrawLeft2Door;
			DrawLeft2Door:
				if (Done)
					Next_state = DrawLeft3Door;
			DrawLeft3Door:
				if (Done)
					Next_state = DrawRight1Door;
			DrawRight1Door:
				if (Done)
					Next_state = DrawRight2Door;
			DrawRight2Door:
				if (Done)
					Next_state = DrawRight3Door;
			DrawRight3Door:
				if (Done)
					Next_state = FinishedRoom;
					
				
			
			
			FinishedRoom:
				Next_state = Halted;
//				Next_state = Cycle;
//			Cycle:
//				Next_state = Cycle;
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
				Draw_FB_EN = 1'b1;
				
			end
			TopRight:
			begin
				DrawY = 8'd0;
				DrawX = 8'd20;
				SpriteY = 7'd0;
				SpriteX = 7'd3;
				Draw_FB_EN = 1'b1;
			end
			TopWallFL:
			begin
				DrawY = 8'd0;
				DrawX = 8'd1*(count+1);
				SpriteY = 7'd0;
				SpriteX = 7'd1;
				Draw_FB_EN = 1'b1;
			end
			TopWallSL:
			begin
				DrawY = 8'd1;
				DrawX = 8'd1*(count+1);
				SpriteY = 7'd1;
				SpriteX = 7'd1;
				Draw_FB_EN = 1'b1;
			end
			LeftWall:
			begin
				DrawY = 8'd1*(count+1);
				DrawX = 8'd0;
				SpriteY = 7'd1;
				SpriteX = 7'd0;
				Draw_FB_EN = 1'b1;
			end
			RightWall:
			begin
				DrawY = 8'd1*(count+1);
				DrawX = 8'd20;
				SpriteY = 7'd1;
				SpriteX = 7'd0;
				Draw_FB_EN = 1'b1;
			end
			Floor:
			begin
				DrawY = 8'd2+(count/19);
				DrawX = 8'd1+(count%19);
				SpriteY = 7'd2;
				SpriteX = 7'd3;
				Draw_FB_EN = 1'b1;
			end
			BottomLeftFL:
			begin
				DrawY = 8'd11;
				DrawX = 8'd0;
				SpriteY = 7'd0;
				SpriteX = 7'd4;
				Draw_FB_EN = 1'b1;
			end
			BottomLeftSL:
			begin
				DrawY = 8'd12;
				DrawX = 8'd0;
				SpriteY = 7'd1;
				SpriteX = 7'd4;
				Draw_FB_EN = 1'b1;
			end
			BottomRightFL:
			begin
				DrawY = 8'd11;
				DrawX = 8'd20;
				SpriteY = 7'd0;
				SpriteX = 7'd5;
				Draw_FB_EN = 1'b1;
			end
			BottomRightSL:
			begin
				DrawY = 8'd12;
				DrawX = 8'd20;
				SpriteY = 7'd1;
				SpriteX = 7'd5;
				Draw_FB_EN = 1'b1;
			end
			BottomWallFL:
			begin
				DrawY = 8'd11;
				DrawX = 8'd1*(count+1);
				SpriteY = 7'd0;
				SpriteX = 7'd1;
				Draw_FB_EN = 1'b1;
			end
			BottomWallSL:
			begin
				DrawY = 8'd12;
				DrawX = 8'd1*(count+1);
				SpriteY = 7'd1;
				SpriteX = 7'd1;
				Draw_FB_EN = 1'b1;
			end
			DrawTopDoor:
			begin
				Draw_FB_EN = 1'b0;
				if(Doors == 4'b1000)
				begin
					DrawY = 8'd1;
					DrawX = 8'd10;
					SpriteY = 7'd4;
					SpriteX = 7'd1;
					Draw_FB_EN = 1'b1;
				end
			end
			DrawBottomDoor:
			begin
				Draw_FB_EN = 1'b0;
				if(Doors == 4'b0100)
				begin
					DrawY = 8'd12;
					DrawX = 8'd10;
					SpriteY = 7'd4;
					SpriteX = 7'd1;
					Draw_FB_EN = 1'b1;
				end
			end
			DrawLeft1Door:
			begin
				DrawY = 8'd4;
				DrawX = 8'd0;
				SpriteY = 7'd0;
				SpriteX = 7'd6;
				Draw_FB_EN = 1'b1;
			end
			DrawLeft2Door:
			begin
				DrawY = 8'd5;
				DrawX = 8'd0;
				SpriteY = 7'd1;
				SpriteX = 7'd6;
				Draw_FB_EN = 1'b1;
			end
			DrawLeft3Door:
			begin
				DrawY = 8'd6;
				DrawX = 8'd0;
				SpriteY = 7'd2;
				SpriteX = 7'd3;
				Draw_FB_EN = 1'b1;
			end
			DrawRight1Door:
			begin
				DrawY = 8'd4;
				DrawX = 8'd20;
				SpriteY = 7'd0;
				SpriteX = 7'd6;
				Draw_FB_EN = 1'b1;
			end
			DrawRight2Door:
			begin
				DrawY = 8'd5;
				DrawX = 8'd20;
				SpriteY = 7'd1;
				SpriteX = 7'd6;
				Draw_FB_EN = 1'b1;
			end
			DrawRight3Door:
			begin
				DrawY = 8'd6;
				DrawX = 8'd20;
				SpriteY = 7'd2;
				SpriteX = 7'd3;
				Draw_FB_EN = 1'b1;
			end
			FinishedRoom:
			begin
				ALLDone = 1'b1;
				Draw_FB_EN = 1'b0;
			end
//			Cycle:
//			begin
//				ALLDone = 1'b1;
//				Draw_FB_EN = 1'b0;
//			end
		endcase
	end
	

	
	
	

	
	
endmodule




