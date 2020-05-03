module DrawController(
	input CLK, RESET,
	input DrawWait,
	input Start,
	input NextRoom,			//receive from player_controller.
	input Done, DrawRoomDone,
	input VGA_VS,
	input [2:0] PlayerHealth, EnemyHealth,
	
	output logic [2:0] Draw_state
);
	
//	logic  Player_Draw_EN, Enemy_Draw_EN, Room_Draw_EN, Title_Draw_EN, Hud_Draw_EN, Transition_Draw_EN;
	
	enum logic [4:0] {DrawTitle, DrawRoom, DrawPlayer, DrawEnemy1, DrawEnemy2, DrawEnemy3, DrawEnemy4, DrawEnemy5, DrawHud, DrawTransition, Stop1, Stop2, Wait, End} State, Next_state;

	always_ff @(posedge CLK)
	begin
		if (RESET)
			State <= Stop1;
		else if (PlayerHealth == 3'd0)
			State <= Stop1;
		else 
			State <= Next_state;
	
	end
	
	always_comb 
	begin
		Next_state = State;
		Draw_state = 3'd0;
//		Draw_EN = 1'b1;
		
//		Player_Draw_EN = 1'b0;
//		Enemy_Draw_EN = 1'b0;
//		Room_Draw_EN = 1'b0;
//		Title_Draw_EN = 1'b0;
//		Hud_Draw_EN = 1'b0;
//		Transition_Draw_EN = 1'b0;
		
		
		case (State)
		Stop1:
		begin
			if(~VGA_VS)
				Next_state = DrawTitle;
			else
				Next_state = Stop1;
		end
		Wait:
		begin
			if(~VGA_VS)
				Next_state = Wait;
			else	
				Next_state = Stop2;
		end
		Stop2:
		begin
			if(~VGA_VS)
				Next_state = DrawRoom;
			else
				Next_state = Stop2;
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
			Next_state = DrawEnemy5;
		else	
			Next_state = DrawPlayer;
	
		DrawEnemy5:
		if (Done | (EnemyHealth == 3'd0))
			Next_state = Wait;
		else
			Next_state = DrawEnemy5;
			
		DrawHud:
			Next_state = DrawRoom;
		
		DrawTransition:
		begin
			if (DrawWait)
				Next_state = DrawTransition;
			else
				Next_state = DrawRoom;
		end
		
		End:
			//Next_state = DrawTitle;
			Next_state = End;
		
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
			
		DrawEnemy1, DrawEnemy2, DrawEnemy3, DrawEnemy4, DrawEnemy5 :
	//		Enemy_Draw_EN = 1'b1;
			Draw_state = 3'd4;
			
		DrawHud:
	//		Hud_Draw_EN = 1'b1;
			Draw_state = 3'd5;
			
		DrawTransition:
	//		Transition_Draw_EN = 1'b1;
			Draw_state = 3'd6;
			
		Stop1, Stop2:
			Draw_state = 3'd0;
		End:
			Draw_state = 3'd0;
		
		endcase
		
	end


endmodule

