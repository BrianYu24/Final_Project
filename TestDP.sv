//module TestDrawPlayer(
//	input Enable
//);
//
//	enum logic [4:0] {Halted, TopLeft, TopRight, TopWallFL, TopWallSL, LeftWall, RightWall, Floor, BottomLeftFL, BottomLeftSL, BottomRightFL,BottomRightSL, BottomWallFL, BottomWallSL,FinishedRoom, Cycle} State, Next_state;
//
//	always_ff @ (posedge Clk)
//	begin
//		if(RESET)
//		begin
//			State <= Halted;
//			count <= 8'b0;
//		end
//		else
//		begin
//			State <= Next_state;
//		end
//		
//		if(State != Next_state)
//			count <= 8'b0;
//		else if(Done)
//			count <= count+8'b1;
//		
//	end
//
//
//
//endmodule
