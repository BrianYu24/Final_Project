//module testbench2();
//timeunit 10ns;
//timeprecision 1ns;
//
//
//
//logic [7:0] x, y;
//logic [1:0] behavior,period;
//logic isLeft , Draw_En;
//
//
//logic is_8;
//logic [7:0] NewDrawX, NewDrawY;
//logic [6:0] SpriteX, SpriteY;
//
//
//
//
// always begin : CLOCK_GENERATION
// #1 Clk = ~Clk;
// end
// initial begin
//	Clk = 0;
// end
// DrawRoom tp(.*);
// 
// initial begin: TEST_VECTORS
//	x = 8'd40;
//	y = 8'd40;
//	Draw_EN = 1'b1;
//	isLeft = 1'b1;
//	behavior = 2'd1;
//	period = 2'd1;
//
//
//	
//	
// 
// 
// //test case 1
// 
//#2
//	isLeft = 1'b1;
//	behavior = 2'd1;
//	period = 2'd1;
//	
//#2
//	isLeft = 1'b1;
//	behavior = 2'd1;
//	period = 2'd2;
//#2
//	isLeft = 1'b1;
//	behavior = 2'd2;
//	period = 2'd1;
//#2
//	isLeft = 1'b1;
//	behavior = 2'd2;
//	period = 2'd2;
//	
//
// 
// end
//endmodule 