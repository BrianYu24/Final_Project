module DrawController(
	input logic CLK, RESET,
	input logic DrawWait,
	input logic Start,
	input logic NextRoom,			//receive from player_controller.
	input logic Done, DrawRoomDone,
	input logic VGA_BLANK_N,
	
	output logic [2:0] Draw_state,
	output logic Draw_EN
);
	
//	logic  Player_Draw_EN, Enemy_Draw_EN, Room_Draw_EN, Title_Draw_EN, Hud_Draw_EN, Transition_Draw_EN;
	
	enum logic [4:0] {DrawTitle, DrawRoom, DrawPlayer, DrawEnemy, DrawHud, DrawTransition, Stop, Wait} State, Next_state;

	always_ff @(posedge CLK)
	begin
		if (RESET)
		begin
			State <= Stop;
		end
		else 
			State <= Next_state;
	
	end
	
	always_comb 
	begin
		Next_state = State;
		Draw_state = 3'd0;
		Draw_EN = 1'b1;
		
//		Player_Draw_EN = 1'b0;
//		Enemy_Draw_EN = 1'b0;
//		Room_Draw_EN = 1'b0;
//		Title_Draw_EN = 1'b0;
//		Hud_Draw_EN = 1'b0;
//		Transition_Draw_EN = 1'b0;
		
		
		case (State)
		Stop:
		begin
			if(~VGA_BLANK_N)
				Next_state = DrawTitle;
			else
				Next_state = Stop;
		end
		Wait:
		begin
			if(~VGA_BLANK_N)
				Next_state = Wait;
			else	
				Next_state = Stop;
		end
		DrawTitle:
		begin
			if (Start)
				Next_state = DrawRoom;
			else
				Next_state = DrawTitle;
		end
		
		DrawRoom:
		begin
		if (DrawRoomDone)
			Next_state = DrawPlayer;
		else
			Next_state = DrawRoom;
//			if (NextRoom)
//				Next_state = DrawTransition;
//			else
//				Next_state = DrawPlayer;
		end
		
		DrawPlayer:
		//	Next_state = DrawEnemy;
		if (Done)
			Next_state = Wait;
		else	
			Next_state = DrawPlayer;
		
		DrawEnemy:
			Next_state = DrawHud;
		DrawHud:
			Next_state = DrawRoom;
		
		DrawTransition:
		begin
			if (DrawWait)
				Next_state = DrawTransition;
			else
				Next_state = DrawRoom;
		end
		
		endcase
		
		
		
		case (State)
		DrawTitle:
	//		Title_Draw_EN = 1'b1;
			Draw_state = 3'd1;
		
		DrawRoom:
	//		Room_Draw_EN = 1'b1;
			Draw_state = 3'd2;
			
		DrawPlayer:
	//		Player_Draw_EN = 1'b1;
			Draw_state = 3'd3;
			
		DrawEnemy:
	//		Enemy_Draw_EN = 1'b1;
			Draw_state = 3'd4;
			
		DrawHud:
	//		Hud_Draw_EN = 1'b1;
			Draw_state = 3'd5;
			
		DrawTransition:
	//		Transition_Draw_EN = 1'b1;
			Draw_state = 3'd6;
			
		Stop:
			Draw_EN = 1'b1;
		
		endcase
		
	end


endmodule

