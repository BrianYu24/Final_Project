module testbench2();
timeunit 10ns;
timeprecision 1ns;



logic [3:0] x, y;
logic Draw_EN,Clk,RESET;
logic Done_Draw_FB,defeated;

logic is_8, Draw_FB_EN, ALLDone;
logic [7:0] NewDrawX, NewDrawY;
logic [6:0] NewSpriteX, NewSpriteY;





 always begin : CLOCK_GENERATION
 #1 Clk = ~Clk;
 end
 initial begin
	Clk = 0;
 end
 DrawRoom tp(.*);
 
 initial begin: TEST_VECTORS
	x = 4'b0;
	y = 4'b0;
	Draw_EN = 1'b0;
	RESET = 1'b1;
	Done_Draw_FB = 1'b1;
	defeated = 1'b0;


	
	
 
 
 //test case 1
 
 #2 RESET = 1'b0;
	Draw_EN = 1'b1;

 
 end
endmodule 