//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Po-Han Huang  10-06-2017                               --
//                                                                       --
//    Fall 2017 Distribution                                             --
//                                                                       --
//    For use with ECE 385 Lab 8                                         --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------

// color_mapper: Decide which color to be output to VGA for each pixel.
module  color_mapper ( input              Clk,            // Whether current pixel belongs to ball 
                                                              //   or background (computed in ball.sv)
                       input        [9:0] DrawX, DrawY,       // Current pixel coordinates
                       output logic [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output
                     );
    
    logic [7:0] Red, Green, Blue;
    
	 
	 logic [13:0] read_address;
	 logic isBlack;
	 logic [4:0] palette;
	 
	 always_comb
	 begin
		if (DrawX < 96 && DrawY < 120)
		begin
			read_address = DrawY*96+DrawX;
			isBlack = 1'b0;
		end
		else
		begin
			read_address = 14'b0;
			isBlack = 1'b1;
		end
	 end
	 
	 SpriteSheet(.read_address,.Clk,.data_Out(palette));
	 Palette(.VGA_R(Red),.VGA_G(Green),.VGA_B(Blue),.color(palette));
	 
	 always_ff @ (posedge Clk) begin
		if(isBlack)
		begin
			VGA_R = 8'b0;
			VGA_G = 8'b0;
			VGA_B = 8'b0;
		end
		else
		begin
			VGA_R = Red;
			VGA_G = Green
			VGA_B = Blue;
		end
	 end
    
endmodule
