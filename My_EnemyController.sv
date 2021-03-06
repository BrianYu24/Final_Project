module  Enemy_Controller ( input         Clk, Start,                // 50 MHz clock
                             Reset,              // Active-high reset signal
                             frame_clk,          // The clock indicating a new frame (~60Hz)
					input [2:0] EnemyHealth,
					input [7:0] PlayerX, PlayerY,
					output logic [7:0] EnemyX,EnemyY,
					output logic [1:0] behavior,period,
					output logic isLeft
              );
				  
//	 parameter [7:0] Enemy_X_Center = $urandom_range(160,0);	
//	 parameter [7:0] Enemy_Y_Center = $urandom_range(88,0);

				  
    parameter [7:0] Enemy_X_Center = 8'd20;  // Center position on the X axis
    parameter [7:0] Enemy_Y_Center = 8'd20;  // Center position on the Y axis
    parameter [7:0] Enemy_X_Min = 8'd8;       // Leftmost point on the X axis
    parameter [7:0] Enemy_X_Max = 8'd160;     // Rightmost point on the X axis
    parameter [7:0] Enemy_Y_Min = 8'd16;       // Topmost point on the Y axis
    parameter [7:0] Enemy_Y_Max = 8'd88;     // Bottommost point on the Y axis
    parameter [7:0] Enemy_X_Step = 8'd1;      // Step size on the X axis
    parameter [7:0] Enemy_Y_Step = 8'd1;      // Step size on the Y axis
    parameter [7:0] Enemy_Size = 8'd8;        // Enemy size
    
    logic [7:0] Enemy_X_Pos, Enemy_X_Motion, Enemy_Y_Pos, Enemy_Y_Motion;
    logic [7:0] Enemy_X_Pos_in, Enemy_X_Motion_in, Enemy_Y_Pos_in, Enemy_Y_Motion_in;
	 logic isLeft_in, alive;
	 logic [1:0] behavior_in;
	 logic [1:0] period_in;
	 logic [7:0] keycode, keycode_in;
	 logic [1:0] count, count_in;

	 
	 assign EnemyX = Enemy_X_Pos;
	 assign EnemyY = Enemy_Y_Pos;
    
    //////// Do not modify the always_ff blocks. ////////
    // Detect rising edge of frame_clk
    logic frame_clk_delayed, frame_clk_rising_edge;
    always_ff @ (posedge Clk) begin
        frame_clk_delayed <= frame_clk;
        frame_clk_rising_edge <= (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);
    end
    // Update registers
    always_ff @ (posedge Clk)
    begin
        if (Reset | (EnemyHealth==3'b0) |Start)
        begin
				count <= 2'd0;
				keycode <= 8'd0;
            Enemy_X_Pos <= Enemy_X_Center;
            Enemy_Y_Pos <= Enemy_Y_Center;
            Enemy_X_Motion <= 8'd0;
            Enemy_Y_Motion <= 8'd0;
				isLeft <= 1'b0;
				period <= 2'b0;
				behavior <= 2'b0;
        end
		  else if (count == 2'd0)
		  begin
				count <= count_in;
				keycode <= keycode_in;
				Enemy_X_Pos <= Enemy_X_Pos_in;
            Enemy_Y_Pos <= Enemy_Y_Pos_in;
            Enemy_X_Motion <= Enemy_X_Motion_in;
            Enemy_Y_Motion <= Enemy_Y_Motion_in;
				isLeft <= isLeft_in;
				period <= period_in;
				behavior <= behavior_in;
		  end
        else
        begin
				count <= count_in;
				keycode <= keycode;
            Enemy_X_Pos <= Enemy_X_Pos_in;
            Enemy_Y_Pos <= Enemy_Y_Pos_in;
            Enemy_X_Motion <= Enemy_X_Motion_in;
            Enemy_Y_Motion <= Enemy_Y_Motion_in;
				isLeft <= isLeft_in;
				period <= period_in;
				behavior <= behavior_in;
        end
		 
    end
    //////// Do not modify the always_ff blocks. ////////
	 


	 assign count_in = (count + 2'd1) % 4;
	 
	 
	 //////////////////////////////////////////////////////
	 
	int DistX, DistY, AttackSize;
	logic [7:0] PlayerCX, PlayerCY, EnemyCX, EnemyCY;
	
	assign PlayerCX = PlayerX + 8'd4;
	assign PlayerCY = PlayerY + 8'd4;
	assign EnemyCX = EnemyX + 8'd4;
	assign EnemyCY = EnemyY + 8'd4;
	
	assign AttackSize = 8'd8;
	assign DistX = PlayerCX - EnemyCX;
	assign DistY = PlayerCY - EnemyCY;
	 
	 
	 
    // You need to modify always_comb block.
    always_comb
    begin
        // By default, keep motion and position unchanged
			keycode_in = keycode;
			Enemy_X_Pos_in = Enemy_X_Pos;
			Enemy_Y_Pos_in = Enemy_Y_Pos;
			Enemy_X_Motion_in = Enemy_X_Motion;
			Enemy_Y_Motion_in = Enemy_Y_Motion;
			isLeft_in = isLeft;
			period_in = period;
			behavior_in = behavior;
			
			
        // Update position and motion only at rising edge of frame clock
        if (frame_clk_rising_edge)
        begin
            // Be careful when using comparators with "logic" datatype because compiler treats 
            //   both sides of the operator as UNSIGNED numbers.
            // e.g. Enemy_Y_Pos - Enemy_Size <= Enemy_Y_Min 
            // If Enemy_Y_Pos is 0, then Enemy_Y_Pos - Enemy_Size will not be -4, but rather a large positive number.
				
//				keycode_in = 8'd0;
				if ( ( DistX*DistX + DistY*DistY) <= (AttackSize*AttackSize) ) 
					keycode_in = 8'd44;
				else if (PlayerCX > EnemyCX + AttackSize/2)
					keycode_in = 8'd7;			//S
				else if (PlayerCY > EnemyCY + AttackSize/2)
					keycode_in = 8'd22;			//D
				else if (PlayerCY + AttackSize/2< EnemyCY)
					keycode_in = 8'd26;			//W
				else if (PlayerCX + AttackSize/2 < EnemyCX)
					keycode_in = 8'd4;			//A
				else
					keycode_in = 8'd0;
				
				
				
				Enemy_X_Motion_in = Enemy_X_Motion;
				Enemy_Y_Motion_in = Enemy_Y_Motion;
				isLeft_in = isLeft;
				period_in = period;
				behavior_in = behavior;
						
				if (keycode == 8'd26)			//W pressed
				begin
					Enemy_Y_Motion_in = (~(Enemy_Y_Step) + 8'b1);
					Enemy_X_Motion_in = 8'd0;
					behavior_in = 2'b1;
					period_in = (period+1)%4;
				end
				else if (keycode == 8'd22)	//S pressed
				begin
					Enemy_Y_Motion_in = Enemy_Y_Step;
					Enemy_X_Motion_in = 8'd0;
					behavior_in = 2'b1;
					period_in = (period+1)%4;
				end
				else if (keycode == 8'd4)	//A pressed
				begin
					Enemy_X_Motion_in = (~(Enemy_X_Step) + 8'b1);
					Enemy_Y_Motion_in = 8'd0;
					behavior_in = 2'b1;
					isLeft_in = 1'b1;
					period_in = (period+1)%4;
				end
				else if (keycode == 8'd7)	//D pressed
				begin
					Enemy_X_Motion_in = Enemy_X_Step;
					Enemy_Y_Motion_in = 8'd0;
					behavior_in = 2'b1;
					isLeft_in = 1'b0;
					period_in = (period+1)%4;
				end
				
				else if (keycode == 8'd44)	//space pressed
				begin
					Enemy_X_Motion_in = 8'd0;
					Enemy_Y_Motion_in = 8'd0;
					behavior_in = 2'd2;
					period_in = (period+1)%4;
				end

				else if (keycode == 8'd0)
				begin
					Enemy_X_Motion_in = 8'd0;
					Enemy_Y_Motion_in = 8'd0;
					behavior_in = 2'd2;
					period_in = (period+1)%4;
				end
				
				else 								//Nothing pressed
				begin
					Enemy_X_Motion_in = Enemy_X_Step;
					Enemy_Y_Motion_in = 8'd0;
					behavior_in = 2'd2;
					isLeft_in = 1'b0;
					period_in = (period+1)%4;
				end

        
		  
		  
        
            // Update the Enemy's position with its motion
				
				Enemy_X_Pos_in = Enemy_X_Pos;
            Enemy_Y_Pos_in = Enemy_Y_Pos;
				if (Enemy_X_Pos + Enemy_X_Motion + Enemy_Size > Enemy_X_Max)
					Enemy_X_Pos_in = Enemy_X_Max - Enemy_Size;
					
				else if (Enemy_X_Pos + Enemy_X_Motion < Enemy_X_Min)
					Enemy_X_Pos_in = Enemy_X_Min;
					
				else if (Enemy_Y_Pos + Enemy_Size + Enemy_Y_Motion > Enemy_Y_Max)
					Enemy_Y_Pos_in = Enemy_Y_Max - Enemy_Size;
					
				else if (Enemy_Y_Pos + Enemy_Y_Motion < Enemy_Y_Min)
					Enemy_Y_Pos_in = Enemy_Y_Min;	
					
				else
				begin
					Enemy_X_Pos_in = Enemy_X_Pos + Enemy_X_Motion;
					Enemy_Y_Pos_in = Enemy_Y_Pos + Enemy_Y_Motion;
				end
        end
        
    end
        
endmodule
