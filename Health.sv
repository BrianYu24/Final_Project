module Health (
		input EnemyAttack, PlayerAttack, Reset, Start,
		input Clk,frame_clk, transition, thisRoomIsDead,
		input [7:0] EnemyX, EnemyY, PlayerX, PlayerY,
		
		output logic [2:0] PlayerHealth, EnemyHealth
);
	
	
	 logic [2:0] PlayerHealth_in, EnemyHealth_in;
	 logic frame_clk_delayed, frame_clk_rising_edge;
    always_ff @ (posedge Clk) 
	 begin
			
      frame_clk_delayed <= frame_clk;
      frame_clk_rising_edge <= (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);
    end
	
	
	logic [1:0] EnemyCount, PlayerCount;
	logic [5:0] EnemyAttackCD, PlayerAttackCD, EnemyAttackCD_in, PlayerAttackCD_in;
	
	
	always_ff @ (posedge frame_clk_rising_edge)
	begin
		if(Reset | transition |Start)
		begin
			PlayerHealth <= 3'd6;
			EnemyHealth <= 3'd3;
			EnemyAttackCD <= 6'd60;
			PlayerAttackCD <= 6'd60;
		end
		else if(thisRoomIsDead)
		begin
			PlayerHealth <= PlayerHealth_in;
			EnemyHealth <= 6'b0;
			EnemyAttackCD <= EnemyAttackCD_in;
			PlayerAttackCD <= PlayerAttackCD_in;
		end
		
		else
		begin
			PlayerHealth <= PlayerHealth_in;
			EnemyHealth <= EnemyHealth_in;
			EnemyAttackCD <= EnemyAttackCD_in;
			PlayerAttackCD <= PlayerAttackCD_in;
		end
		
		
		if(EnemyAttack)
			EnemyCount <= (EnemyCount+1)%4;
		else
			EnemyCount <= 2'b0;
			
		if(PlayerAttack)
			PlayerCount <= (PlayerCount+1)%4;
		else
			PlayerCount <= 2'b0;
	end

	int DistX, DistY, AttackSize;
	logic [7:0] PlayerCX, PlayerCY, EnemyCX, EnemyCY;
	logic attackHit;
	
	assign PlayerCX = PlayerX + 8'd4;
	assign PlayerCY = PlayerY + 8'd4;
	assign EnemyCX = EnemyX + 8'd4;
	assign EnemyCY = EnemyY + 8'd4;
	
	assign AttackSize = 15;
	assign DistX = PlayerCX - EnemyCX;
	assign DistY = PlayerCY - EnemyCY;
	
	always_comb
	begin
		
		PlayerHealth_in = PlayerHealth;
		EnemyHealth_in = EnemyHealth;
		EnemyAttackCD_in = EnemyAttackCD;
		PlayerAttackCD_in = PlayerAttackCD;
	
		if (( DistX*DistX + DistY*DistY) <= (AttackSize*AttackSize))
			attackHit = 1'b1;
		else
			attackHit = 1'b0;
		
		if(EnemyCount == 2'd3 && attackHit && (EnemyAttackCD == 10'd0))
		begin
			if(PlayerHealth != 3'b0)
				PlayerHealth_in = PlayerHealth - 3'b1;
			EnemyAttackCD_in = 6'd60;
		end
		else
		begin
			if(EnemyAttackCD != 0)
				EnemyAttackCD_in = EnemyAttackCD-6'b1;
		end
	
		if(PlayerCount == 2'd3 && attackHit && (PlayerAttackCD == 10'd0))
		begin
			if(EnemyHealth != 3'b0)
				EnemyHealth_in = EnemyHealth - 3'b1;
			PlayerAttackCD_in = 6'd60;
		end
		else
		begin
			if(PlayerAttackCD != 0)
				PlayerAttackCD_in = PlayerAttackCD-6'b1;
		end
	
	end

endmodule

