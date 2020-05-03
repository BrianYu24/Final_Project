module DrawPlayer(
	input [7:0] x , 
	input [7:0] y ,
	input [1:0] behavior,
	input isLeft ,
	input [1:0] period,
	
	output logic [7:0] NewDrawX, NewDrawY,
	output logic [6:0] SpriteX, SpriteY,
	output logic is_8
);

logic [6:0] NewSpriteX;
logic [6:0] NewSpriteY;


always_comb
begin
NewDrawX = x;
NewDrawY = y;
is_8 = 1'b1;
NewSpriteX = 7'b0;
NewSpriteY = 7'b0;

if(isLeft == 1'b1 && behavior == 2'd2)
begin
	NewDrawX = x-8'd4;
end

case (behavior)
	2'd0: // Standing Still
		case(isLeft)
			1'b0:
			begin
				NewSpriteX = 7'd8;
				NewSpriteY = 7'd5;
			end
			1'b1:
			begin
				NewSpriteX = 7'd8;
				NewSpriteY = 7'd6;
			end
		endcase

	2'd1: // Walking
		case(isLeft)
			1'b0:
				case(period)
					2'd0:
					begin
						NewSpriteX = 7'd8;
						NewSpriteY = 7'd5;
					end
					2'd1:
					begin
						NewSpriteX = 7'd9;
						NewSpriteY = 7'd5;
					end
					2'd2:
					begin
						NewSpriteX = 7'd10;
						NewSpriteY = 7'd5;
					end
					2'd3:
					begin
						NewSpriteX = 7'd11;
						NewSpriteY = 7'd5;
					end
				endcase
			1'b1:
				case(period)
					2'd0:
					begin
						NewSpriteX = 7'd8;
						NewSpriteY = 7'd6;
					end
					2'd1:
					begin
						NewSpriteX = 7'd9;
						NewSpriteY = 7'd6;
					end
					2'd2:
					begin
						NewSpriteX = 7'd10;
						NewSpriteY = 7'd6;
					end
					2'd3:
					begin
						NewSpriteX = 7'd11;
						NewSpriteY = 7'd6;
					end
				endcase
		endcase
	2'd2: // Attacking
	begin
		is_8 = 1'b0;
		case(isLeft)
		1'b0:
			case(period)
				2'd0:
				begin
					NewSpriteX = 7'd0;
					NewSpriteY = 7'd72;
				end
				2'd1:
				begin
					NewSpriteX = 7'd12;
					NewSpriteY = 7'd72;
				end
				2'd2:
				begin
					NewSpriteX = 7'd24;
					NewSpriteY = 7'd72;
				end
				2'd3:
				begin
					NewSpriteX = 7'd36;
					NewSpriteY = 7'd72;
				end
			endcase
		1'b1:
			case(period)
				2'd0:
				begin
					NewSpriteX = 7'd0;
					NewSpriteY = 7'd84;
				end
				2'd1:
				begin
					NewSpriteX = 7'd12;
					NewSpriteY = 7'd84;
				end
				2'd2:
				begin
					NewSpriteX = 7'd24;
					NewSpriteY = 7'd84;
				end
				2'd3:
				begin
					NewSpriteX = 7'd36;
					NewSpriteY = 7'd84;
				end
			endcase
		endcase
		end
endcase

if(is_8)
begin
	SpriteX = 7'd8*NewSpriteX;
	SpriteY = 7'd8*NewSpriteY;
end
else
begin
	SpriteX = NewSpriteX;
	SpriteY = NewSpriteY;
end

end



endmodule
