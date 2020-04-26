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
                      // output logic [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output
							  
							  output logic isBlack,
							  output logic [14:0] read_address
                     );
    
    logic [7:0] Red, Green, Blue;
    
	 
//	 logic [14:0] read_address;
//	 logic isBlack;
//	 logic [4:0] palette;
	 
	 always_comb
	 begin
		if ((DrawX<10'd68) || (DrawX>10'd571) || (DrawY < 10'd84) || (DrawY > 10'd395))
		begin
			isBlack = 1'b1;
			read_address = 14'b0;
		end
		else
		begin
			read_address = (DrawX-10'd68)/10'd3+((DrawY-10'd84)/10'd3)*10'd168;
			isBlack = 1'b0;
		end
	 end
	 
	 //SpriteSheet(.read_address,.Clk,.data_Out(palette));
//	 FrameBuffer FB(.data_In(5'd0),.write_address(15'd0), .read_address,.Clk,.data_Out(palette),.we(1'b0));
//	 Palette PL (.VGA_R(Red),.VGA_G(Green),.VGA_B(Blue),.color(palette));

	 
	 
//	 always_comb
//	 begin
//		if(isBlack)
//		begin
//			VGA_R = 8'hFF;
//			VGA_G = 8'h00;
//			VGA_B = 8'hFF;
//		end
//		else
//		begin
//			VGA_R = Red;
//			VGA_G = Green;
//			VGA_B = Blue;
//		end
//	 end
    
endmodule
