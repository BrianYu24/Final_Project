module  ball ( input         Clk,                // 50 MHz clock
                             Reset,              // Active-high reset signal
                             frame_clk,          // The clock indicating a new frame (~60Hz)
               input [9:0]   DrawX, DrawY,       // Current pixel coordinates
					input [7:0]   keycode,
               output logic  is_ball             // Whether current pixel belongs to ball or background
              );
    
    parameter [7:0] Player_X_Center = 8'd84;  // Center position on the X axis
    parameter [7:0] Player_Y_Center = 8'd52;  // Center position on the Y axis
    parameter [7:0] Player_X_Min = 8'd8;       // Leftmost point on the X axis
    parameter [7:0] Player_X_Max = 8'd160;     // Rightmost point on the X axis
    parameter [7:0] Player_Y_Min = 8'd16;       // Topmost point on the Y axis
    parameter [7:0] Player_Y_Max = 8'd88;     // Bottommost point on the Y axis
    parameter [7:0] Player_X_Step = 8'd2;      // Step size on the X axis
    parameter [7:0] Player_Y_Step = 8'd2;      // Step size on the Y axis
    parameter [7:0] Player_Size = 8'd8;        // Ball size
    
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
        Ball_X_Motion_in = 8'd0;
        Ball_Y_Motion_in = 8'd0;
        
        // Update position and motion only at rising edge of frame clock
        if (frame_clk_rising_edge)
        begin
            // Be careful when using comparators with "logic" datatype because compiler treats 
            //   both sides of the operator as UNSIGNED numbers.
            // e.g. Ball_Y_Pos - Ball_Size <= Ball_Y_Min 
            // If Ball_Y_Pos is 0, then Ball_Y_Pos - Ball_Size will not be -4, but rather a large positive number.
            if( Ball_Y_Pos + Ball_Size >= Ball_Y_Max )		// Ball is at the bottom edge, BOUNCE!
				begin
                Ball_Y_Motion_in = (~(Ball_Y_Step) + 1'b1);  // 2's complement.
					 Ball_X_Motion_in = 10'd0;
				end	 
            else if ( Ball_Y_Pos <= Ball_Y_Min + Ball_Size )  // Ball is at the top edge, BOUNCE!
				begin
                Ball_Y_Motion_in = Ball_Y_Step;
					 Ball_X_Motion_in = 10'd0;
				end
            // TODO: Add other boundary detections and handle keypress here.
				
				
				else if ( Ball_X_Pos + Ball_Size >= Ball_X_Max )  // Ball is at the bottom edge, BOUNCE!
				begin
                Ball_X_Motion_in = (~(Ball_X_Step) + 1'b1);  // 2's complement. 
					 Ball_Y_Motion_in = 10'd0; 
				end
            else if ( Ball_X_Pos <= Ball_X_Min + Ball_Size )  // Ball is at the top edge, BOUNCE!
				begin
                Ball_X_Motion_in = Ball_X_Step;
					 Ball_Y_Motion_in = 10'd0;
				end
				
				else
				begin
				
					if (keycode == 8'd26)			//W pressed
					begin
						Ball_Y_Motion_in = (~(Ball_Y_Step) + 1'b1);
						Ball_X_Motion_in = 10'd0;
					end
					else if (keycode == 8'd22)	//S pressed
					begin
						Ball_Y_Motion_in = Ball_Y_Step;
						Ball_X_Motion_in = 10'd0;
					end
					else if (keycode == 8'd4)	//A pressed
					begin
						Ball_X_Motion_in = (~(Ball_X_Step) + 1'b1);
						Ball_Y_Motion_in = 10'd0;
					end
					else if (keycode == 8'd7)	//D pressed
					begin
						Ball_X_Motion_in = Ball_X_Step;
						Ball_Y_Motion_in = 10'd0;
					end

					else 
					begin
						Ball_X_Motion_in = Ball_X_Motion;
						Ball_Y_Motion_in = Ball_Y_Motion;
					end
				
				end
        
        
            // Update the ball's position with its motion
            Ball_X_Pos_in = Ball_X_Pos + Ball_X_Motion;
            Ball_Y_Pos_in = Ball_Y_Pos + Ball_Y_Motion;
        end
        
        /**************************************************************************************
            ATTENTION! Please answer the following quesiton in your lab report! Points will be allocated for the answers!
            Hidden Question #2/2:
               Notice that Ball_Y_Pos is updated using Ball_Y_Motion. 
              Will the new value of Ball_Y_Motion be used when Ball_Y_Pos is updated, or the old? 
              What is the difference between writing
                "Ball_Y_Pos_in = Ball_Y_Pos + Ball_Y_Motion;" and 
                "Ball_Y_Pos_in = Ball_Y_Pos + Ball_Y_Motion_in;"?
              How will this impact behavior of the ball during a bounce, and how might that interact with a response to a keypress?
              Give an answer in your Post-Lab.
        **************************************************************************************/
    end
    
    // Compute whether the pixel corresponds to ball or background
    /* Since the multiplicants are required to be signed, we have to first cast them
       from logic to int (signed by default) before they are multiplied. */
    int DistX, DistY, Size;
    assign DistX = DrawX - Ball_X_Pos;
    assign DistY = DrawY - Ball_Y_Pos;
    assign Size = Ball_Size;
    always_comb begin
        if ( ( DistX*DistX + DistY*DistY) <= (Size*Size) ) 
            is_ball = 1'b1;
        else
            is_ball = 1'b0;
        /* The ball's (pixelated) circle is generated using the standard circle formula.  Note that while 
           the single line is quite powerful descriptively, it causes the synthesis tool to use up three
           of the 12 available multipliers on the chip! */
    end
    
endmodule