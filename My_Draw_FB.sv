module Draw_Frame_Buffer(
	input CLK,RESET,
	input [7:0] DrawX, DrawY,   		///0-168, 0-104	actual coordinates
	input [6:0] SpriteX, SpriteY,    ///0-96, 0-120		actual coordinates
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
	
	logic [7:0] count;
	
	logic [7:0] NewDrawX, NewDrawY;
	logic [6:0] NewSpriteX, NewSpriteY;
	
	assign read_address = NewSpriteY*7'd96 + NewSpriteX;
	assign write_address = NewDrawY*10'd168 + NewDrawX;

	SpriteSheet ss(
		.read_address, .Clk(CLK), .data_Out(palette));
	
	//FrameBuffer FB(.data_In(palette), .read_address(15'b0),.write_address, .we, .Clk(CLK), .data_Out(out));
	//FrameBuffer FB(.data_In(5'd19), .read_address(15'b0),.write_address, .we, .Clk(CLK), .data_Out(out));


	enum logic [4:0] {Halted, Drawing, First_Drawing, Last_Drawing, DoneDrawing} State, Next_state;

	always_ff @ (posedge CLK)
	begin
		if(RESET)
		begin
			State <= Halted;
			count <= 8'b0;
		end
		else if (State == Halted)
		begin
			count <= 8'b0;
			State <= Next_state;
		end
		else if (State == First_Drawing)
		begin
			State <= Next_state;
		end
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
					Next_state = First_Drawing;
				else
					Next_state = Halted;
			end
			First_Drawing:
				Next_state = Drawing;
			Drawing:
			begin
				if(count == 8'd63 && is_8)
					Next_state = Last_Drawing;
				else if(count == 8'd143 && ~is_8)
					Next_state = Last_Drawing;
				else
					Next_state = Drawing;
			end
			Last_Drawing:
				Next_state = DoneDrawing;
			DoneDrawing:
				Next_state = Halted;
		endcase
		
		case(State)
			Halted:
				Done = 1'b0;
			
			First_Drawing:
			begin
				Done = 1'b0;
				we = 1'b0;
				if(is_8)
				begin
					NewSpriteX = SpriteX + (count&7);
					NewSpriteY = SpriteY + (count>>3);
				end
				else
				begin
					NewSpriteX = SpriteX + (count%12);
					NewSpriteY = SpriteY + (count/12);
				end
			end
			Drawing:
			begin
				Done = 1'b0;
				we = 1'b1;
					
				if(is_8)
				begin
					NewDrawX = DrawX + ((count-1)&7);
					if (((count-1)%8 == 8'd7) & ((count)!=8'd0))
						NewDrawY = DrawY + ((count-1)>>3);
					else
						NewDrawY = DrawY + ((count)>>3);
						
					NewSpriteX = SpriteX + (count&7);
					NewSpriteY = SpriteY + (count>>3);
				end
				else
				begin
					NewDrawX = DrawX + ((count-1)%12);
					if (((count-1)%12 == 8'd11) & ((count)!=8'd0))
						NewDrawY = DrawY + ((count-1)/12);
					else
						NewDrawY = DrawY + ((count)/12);
					NewSpriteX = SpriteX + (count%12);
					NewSpriteY = SpriteY + (count/12);
				end
			end
			Last_Drawing:
			begin
				Done = 1'b0;
				we = 1'b1;
				if(is_8)
				begin
					NewDrawX = DrawX + ((count-1)&7);
					NewDrawY = DrawY + ((count-1)>>3);
				end
				else
				begin
					NewDrawX = DrawX + ((count-1)%12);
					NewDrawY = DrawY + ((count-1)/12);
				end
			end
			DoneDrawing:
			begin
				Done = 1'b1;
			end
		endcase
	end
	
	
endmodule
