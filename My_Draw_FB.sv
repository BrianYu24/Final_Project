module Draw_Frame_Buffer(
	input CLK,RESET,
	input [7:0] DrawX, DrawY,   ///0-168, 0-104
	input [6:0] SpriteX, SpriteY,    ///0-96, 0-120
	input is_8,
	input Draw_EN,
	
	output logic Done, we,
	output logic [4:0] palette,
	output logic [14:0] write_address
	
);

	logic [14:0] read_address;
//	logic [14:0] write_address;
//	logic [4:0] palette;
//	logic [4:0] out;
//	logic we;
	
	logic [6:0] count;
	
	logic [7:0] NewDrawX, NewDrawY;
	logic [6:0] NewSpriteX, NewSpriteY;
	
	assign read_address = NewSpriteY*7'd96 + NewSpriteX;
	assign write_address = NewDrawY*10'd168 + NewDrawX;

	SpriteSheet ss(
		.read_address, .Clk(CLK), .data_Out(palette));
	
	//FrameBuffer FB(.data_In(palette), .read_address(15'b0),.write_address, .we, .Clk(CLK), .data_Out(out));
	//FrameBuffer FB(.data_In(5'd19), .read_address(15'b0),.write_address, .we, .Clk(CLK), .data_Out(out));


	enum logic [4:0] {Halted, Drawing, DoneDrawing} State, Next_state;

	always_ff @ (posedge CLK)
	begin
		if(RESET)
		begin
			State <= Halted;
			count <= 7'b0;
		end
		else if (State == DoneDrawing)
			count <= 7'b0;
		else
		begin
			State <= Next_state;
			count <= count+1;
		end
	end
	
	always_comb
	begin
		Next_state = State;
		
		Done = 1'b0;
		we = 1'b0;
		NewDrawX = DrawX;
		NewDrawY = DrawY;
		NewSpriteX = SpriteX;
		NewSpriteY = SpriteY;
		
		case(State)
			Halted:
			begin
				if(Draw_EN)
					Next_state = Drawing;
				else
					Next_state = Halted;
			end
			Drawing:
			begin
				if(count == 7'd63 && is_8)
					Next_state = DoneDrawing;
				else if(count == 7'd143 && ~is_8)
					Next_state = DoneDrawing;
				else
					Next_state = Drawing;
			end
			DoneDrawing:
				Next_state = Halted;
		endcase
		
		case(State)
			Halted:
				Done = 1'b0;
				
			Drawing:
			begin
				Done = 1'b0;
				we = 1'b1;
				if(is_8)
				begin
					NewDrawX = DrawX + (count%8);
					NewDrawY = DrawY + (count/8);
					NewSpriteX = SpriteX + (count%8);
					NewSpriteY = SpriteY + (count/8);
				end
				else
				begin
					NewDrawX = DrawX + (count%12);
					NewDrawY = DrawY + (count/12);
					NewSpriteX = SpriteX + (count%12);
					NewSpriteY = SpriteY + (count/12);
				end
			end
			
			DoneDrawing:
			begin
				Done = 1'b1;
			end
		endcase
	end
	
	
endmodule
