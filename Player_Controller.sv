module  Player_Controller ( input         Clk,                // 50 MHz clock
                             Reset,              // Active-high reset signal
                             frame_clk,          // The clock indicating a new frame (~60Hz)
					input [7:0]   keycode,
					output logic [7:0] PlayerX,PlayerY,
					output [1:0] behavior,period,
					output logic isLeft
              );
				  
				  
    
    parameter [7:0] Player_X_Center = 8'd84;  // Center position on the X axis
    parameter [7:0] Player_Y_Center = 8'd52;  // Center position on the Y axis
    parameter [7:0] Player_X_Min = 8'd8;       // Leftmost point on the X axis
    parameter [7:0] Player_X_Max = 8'd160;     // Rightmost point on the X axis
    parameter [7:0] Player_Y_Min = 8'd16;       // Topmost point on the Y axis
    parameter [7:0] Player_Y_Max = 8'd88;     // Bottommost point on the Y axis
    parameter [7:0] Player_X_Step = 8'd2;      // Step size on the X axis
    parameter [7:0] Player_Y_Step = 8'd2;      // Step size on the Y axis
    parameter [7:0] Player_Size = 8'd8;        // Player size
    
    logic [7:0] Player_X_Pos, Player_X_Motion, Player_Y_Pos, Player_Y_Motion;
    logic [7:0] Player_X_Pos_in, Player_X_Motion_in, Player_Y_Pos_in, Player_Y_Motion_in;
    
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
        if (Reset)
        begin
            Player_X_Pos <= Player_X_Center;
            Player_Y_Pos <= Player_Y_Center;
            Player_X_Motion <= 8'd0;
            Player_Y_Motion <= Player_Y_Step;
        end
        else
        begin
            Player_X_Pos <= Player_X_Pos_in;
            Player_Y_Pos <= Player_Y_Pos_in;
            Player_X_Motion <= Player_X_Motion_in;
            Player_Y_Motion <= Player_Y_Motion_in;
        end
    end
    //////// Do not modify the always_ff blocks. ////////
    
    // You need to modify always_comb block.
    always_comb
    begin
        // By default, keep motion and position unchanged
        Player_X_Pos_in = Player_X_Pos;
        Player_Y_Pos_in = Player_Y_Pos;
        Player_X_Motion_in = 8'd0;
        Player_Y_Motion_in = 8'd0;
        
        // Update position and motion only at rising edge of frame clock
        if (frame_clk_rising_edge)
        begin
            // Be careful when using comparators with "logic" datatype because compiler treats 
            //   both sides of the operator as UNSIGNED numbers.
            // e.g. Player_Y_Pos - Player_Size <= Player_Y_Min 
            // If Player_Y_Pos is 0, then Player_Y_Pos - Player_Size will not be -4, but rather a large positive number.
            if( Player_Y_Pos + Player_Size >= Player_Y_Max )		// Player is at the bottom edge, BOUNCE!
				begin
                Player_Y_Motion_in = (~(Player_Y_Step) + 1'b1);  // 2's complement.
					 Player_X_Motion_in = 10'd0;
				end	 
            else if ( Player_Y_Pos <= Player_Y_Min + Player_Size )  // Player is at the top edge, BOUNCE!
				begin
                Player_Y_Motion_in = Player_Y_Step;
					 Player_X_Motion_in = 10'd0;
				end
            // TODO: Add other boundary detections and handle keypress here.
				
				
				else if ( Player_X_Pos + Player_Size >= Player_X_Max )  // Player is at the bottom edge, BOUNCE!
				begin
                Player_X_Motion_in = (~(Player_X_Step) + 1'b1);  // 2's complement. 
					 Player_Y_Motion_in = 10'd0; 
				end
            else if ( Player_X_Pos <= Player_X_Min + Player_Size )  // Player is at the top edge, BOUNCE!
				begin
                Player_X_Motion_in = Player_X_Step;
					 Player_Y_Motion_in = 10'd0;
				end
				
				else
				begin
				
					if (keycode == 8'd26)			//W pressed
					begin
						Player_Y_Motion_in = (~(Player_Y_Step) + 1'b1);
						Player_X_Motion_in = 10'd0;
					end
					else if (keycode == 8'd22)	//S pressed
					begin
						Player_Y_Motion_in = Player_Y_Step;
						Player_X_Motion_in = 10'd0;
					end
					else if (keycode == 8'd4)	//A pressed
					begin
						Player_X_Motion_in = (~(Player_X_Step) + 1'b1);
						Player_Y_Motion_in = 10'd0;
					end
					else if (keycode == 8'd7)	//D pressed
					begin
						Player_X_Motion_in = Player_X_Step;
						Player_Y_Motion_in = 10'd0;
					end

					else 
					begin
						Player_X_Motion_in = 8'b0;
						Player_Y_Motion_in = 8'b0;
					end
				
				end
        
        
            // Update the Player's position with its motion
            Player_X_Pos_in = Player_X_Pos + Player_X_Motion;
            Player_Y_Pos_in = Player_Y_Pos + Player_Y_Motion;
        end
        
    end
        
endmodule
