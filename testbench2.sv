module testbench2();
timeunit 10ns;
timeprecision 1ns;



logic [2:0] PlayerHealth, EnemyHealth;
logic [7:0] totalEnemies;
logic CLK, RESET,DrawWait,Start,transition, Done, DrawRoomDone, DrawHudDone,VGA_VS;

logic DrawRoomEN, DrawHudEN;
logic [3:0] Draw_state;


 always begin : CLOCK_GENERATION
 #1 CLK = ~CLK;
 end
 initial begin
	CLK = 0;
 end
 DrawController tp(.*);
 
 initial begin: TEST_VECTORS
	
	RESET = 1'b1;
	VGA_VS = 1'b0;
	DrawWait = 1'b1;
	Start = 1'b0;
	transition = 1'b0;
	Done = 1'b1;
	DrawRoomDone = 1'b1;
	DrawHudDone = 1'b1;
	EnemyHealth = 3'd3;
	PlayerHealth = 3'd6;
	totalEnemies = 8'd16;
	

	
	
 
 
 //test case 1
 #2
	RESET = 1'b0;
	Start = 1'b1;
	
 #20
	PlayerHealth = 3'd0;
	
 #10
	PlayerHealth = 3'd6;
 #2
	totalEnemies = 8'd0;
 

	
	

	

 
 end
endmodule 