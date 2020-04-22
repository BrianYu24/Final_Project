module DrawController(
	input logic CLK, RESET,
	input logic DrawWait,
	input logic Start,
	input logic NextRoom,			//receive from player_controller.
	
	output Player_Draw_EN, Enemy_Draw_EN, Room_Draw_EN, Title_Draw_EN, Hud_Draw_EN, Transition_Draw_EN
);
	
	enum logic [4:0] {DrawTitle, DrawRoom, DrawPlayer, DrawEnemy, DrawHud, DrawTransition} State, Next_state;

	always_ff @(posedge CLK)
	begin
		if (RESET)
		begin
			State <= DrawTitle;
		end
		else 
			State <= Next_state;
	
	end
	
	always_comb 
	begin
		Next_state = State;
		
		Player_Draw_EN = 1'b0;
		Enemy_Draw_EN = 1'b0;
		Room_Draw_EN = 1'b0;
		Title_Draw_EN = 1'b0;
		Hud_Draw_EN = 1'b0;
		Transition_Draw_EN = 1'b0;
		
		
		case (State)
		DrawTitle:
		begin
			if (Start)
				Next_state = DrawRoom;
			else
				Next_state = DrawTitle;
		end
		
		DrawRoom:
		begin
			if (NextRoom)
				Next_state = DrawTransition;
			else
				Next_state = DrawPlayer;
		end
		
		DrawPlayer:
			Next_state = DrawEnemy;
		DrawEnemy:
			Next_state = DrawHud;
		DrawHud:
			Next_state = DrawRoom;
		
		DrawTransition:
		begin
			if (DrawWait)
				Next_state = DrawTransition;
			else
				Next_State = DrawRoom;
		end
		
		endcase
		
		
		
		case (State)
		DrawTitle:
			Title_Draw_EN = 1'b1;
		
		DrawRoom:
			Room_Draw_EN = 1'b1;
			
		DrawPlayer:
			Player_Draw_EN = 1'b1;
			
		DrawEnemy:
			Enemy_Draw_EN = 1'b1;
			
		DrawHud:
			Hud_Draw_EN = 1'b1;
			
		DrawTransition:
			Transition_Draw_EN = 1'b1;
		
		endcase
		
	end


endmodule

