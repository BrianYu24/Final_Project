module DungeonController(
		input Clk, RESET, frame_Clk, Start,
		input [7:0] RoomData, PlayerX, PlayerY,
		input [2:0] EnemyHealth,
		input [7:0] Room_Number,
		output logic [4:0] RoomAddr,
		output logic [3:0] Doors,
		output logic transition,
		output logic [7:0] totalEnemies,
		output logic thisRoomIsDead
);

assign Doors = RoomData[3:0];
//assign Doors = 4'b1111;
assign RoomAddr = Y*5+X;


logic [2:0] X,Y, X_in, Y_in;
logic transition_in;
logic [3:0]count,count_in;
logic [7:0] totalEnemies_in;

logic isDead[25];
logic isDead_in[25];

assign thisRoomIsDead = isDead[RoomAddr];


always_ff @ (posedge frame_Clk)
begin
	if (RESET | Start)
	begin
		X <= 3'd2;
		Y <= 3'd2;
		transition <= 1'b0;
		count <= 4'b0;
		totalEnemies <= Room_Number;
	end
	else
	begin
		X <= X_in;
		Y <= Y_in;
		transition <= transition_in;
		count <= count_in;
		totalEnemies <= totalEnemies_in;
	end
end

always_ff @ (posedge Clk)
begin
	if(RESET | Start)
	begin
		for(int i = 0; i < 25; i++)
			isDead[i] <= 0;
	end
	else
	begin
		for(int i = 0; i <25; i++)
			isDead[i] <= isDead_in[i];
	end
end

always_comb
begin
	transition_in = transition;
	X_in = X;
	Y_in = Y;
	count_in = count;
	totalEnemies_in = totalEnemies;
	for(int i = 0; i <25; i++)
		isDead_in[i] = isDead[i];

	if(EnemyHealth == 3'b0)
	begin
		if(isDead[Y*5+X] == 1'b0)
		begin
			isDead_in[Y*5+X] = 1'b1;
			totalEnemies_in = totalEnemies - 1;
		end
		//Top Door
		if((PlayerX>8'd75 && PlayerX<8'd92)&&(PlayerY<8'd18))
		begin
			if(Doors & 4'b1000)
			begin
				transition_in = 1'b1;
				Y_in = Y - 3'd1;
				count_in = 4'b1;
			end
		end
		//Bottom Door
		if((PlayerX>8'd75 && PlayerX<8'd92)&&(PlayerY>8'd77))
		begin
			if(Doors & 4'b0100)
			begin
				transition_in = 1'b1;
				Y_in = Y + 3'd1;
				count_in = 4'b1;
			end
		end
		//Left Door
		if((PlayerY>8'd44 && PlayerY<8'd53)&&(PlayerX<8'd12))
		begin
			if(Doors&4'b0010)
			begin
				transition_in = 1'b1;
				X_in = X - 3'd1;
				count_in = 4'b1;
			end
		end
		//Right Door
		if((PlayerY>8'd44 && PlayerY<8'd53)&&(PlayerX>8'd150))
		begin
			if(Doors&4'b0001)
			begin
				transition_in = 1'b1;
				X_in = X + 3'd1;
				count_in = 4'b1;
			end
		end	
	end
	
	if (count != 4'd0)
		begin
			count_in = count + 2'd1;
		end
		
	if(count == 4'd15)
		begin
			transition_in = 1'd0;
			count_in = 4'd0;
		end
end

endmodule
