module testbench2();
timeunit 10ns;
timeprecision 1ns;


logic [7:0] DrawX, DrawY;
logic [6:0] SpriteX, SpriteY;
logic is_8,Draw_EN;
logic CLK,RESET;
logic Done;




 always begin : CLOCK_GENERATION
 #1 CLK = ~CLK;
 end
 initial begin
	CLK = 0;
 end
 Draw_Frame_Buffer tp(.*);
 
 initial begin: TEST_VECTORS
	DrawX = 8'b0;
	DrawY = 8'b0;
	SpriteX = 7'b0;
	SpriteY = 7'b0;
	is_8 = 1'b1;
	Draw_EN = 1'b0;
	RESET = 1'b1;
	
	
 
 
 //test case 1
 
 #2 RESET = 1'b0;
	Draw_EN = 1'b1;

 
 end
endmodule 