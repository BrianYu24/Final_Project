module DrawHud(
		input [2:0] PlayerHealth,
		input Done,
		input Draw_EN, Clk, RESET, Start,
		
		output logic [7:0] NewDrawX, NewDrawY,
		output logic [6:0] NewSpriteX, NewSpriteY,
		output logic is_8, AllDone
);

	enum logic [4:0] {Halted, DrawFirstHeart, DrawSecondHeart, DrawThirdHeart, Finished } State, Next_state;

	always_ff @ (posedge Clk)
	begin
		if(RESET | Start)
			State <= Halted;
		else
			State <= Next_state;
	end
	
	always_comb 
	begin
		Next_state = State;
		NewDrawX = 8'd0;
		NewDrawY = 8'd0;
		NewSpriteX = 7'd0;
		NewSpriteY = 7'd0;
		AllDone = 1'b0;
		is_8 = 1'b1;
		
		case (State)
		Halted:
		begin
			if(Draw_EN)
				Next_state = DrawFirstHeart;
			else
				Next_state = Halted;
		end
		
		DrawFirstHeart:
		begin
			if (Done)
				Next_state = DrawSecondHeart;
			else
				Next_state = DrawFirstHeart;
		end
		
		DrawSecondHeart:
		begin
			if (Done)
				Next_state = DrawThirdHeart;
			else
				Next_state = DrawSecondHeart;
		end
		
		DrawThirdHeart:
		begin
			if (Done)
				Next_state = Finished;
			else
				Next_state = DrawThirdHeart;
		end
		
		Finished:
		begin
			Next_state = Halted;
		end
		
		endcase
		
		case (State)
		Halted:
			;
		
		DrawFirstHeart:
		begin
			NewDrawX = 8'd16;
			NewDrawY = 8'd0;
			NewSpriteY = 7'd32;
			if (PlayerHealth >= 3'd2)
			begin
				NewSpriteX = 7'd56;
			end
			else if (PlayerHealth == 3'd1)
				NewSpriteX = 7'd64;
			else
				NewSpriteX = 7'd72;
		end
		
		DrawSecondHeart:
		begin
			NewDrawX = 8'd24;
			NewDrawY = 8'd0;
			NewSpriteY = 7'd32;
			if (PlayerHealth >= 3'd4)
				NewSpriteX = 7'd56;
			else if (PlayerHealth == 3'd3)
				NewSpriteX = 7'd64;
			else
				NewSpriteX = 7'd72;
		end
		
		DrawThirdHeart:
		begin
			NewDrawX = 8'd32;
			NewDrawY = 8'd0;
			NewSpriteY = 7'd32;
			if (PlayerHealth == 3'd6)
				NewSpriteX = 7'd56;
			else if (PlayerHealth == 3'd5)
				NewSpriteX = 7'd64;
			else
				NewSpriteX = 7'd72;
		end
		
		Finished:
			AllDone = 1'b1;
			
		endcase
		
	end


endmodule
