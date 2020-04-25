	module Palette(
		input [4:0] color,
		output logic [7:0] VGA_R, VGA_G, VGA_B
	);
	
		logic [23:0] RGB;
		logic [7:0] R,G,B;
		
		assign VGA_R = R;
		assign VGA_B = B;
		assign VGA_G = G;
	
		always_comb
		begin
			case (color)
				5'd0: RGB = 24'hFF00FF;
				5'd1: RGB = 24'hEEC39A;
				5'd2: RGB = 24'hbb9e79;
				5'd3: RGB = 24'hcdac85;
				5'd4: RGB = 24'hB40909;
				5'd5: RGB = 24'hFFFFFF;
				5'd6: RGB = 24'h000000;
				5'd7: RGB = 24'h6ED5FF;
				5'd8: RGB = 24'h439F43;
				5'd9: RGB = 24'h36803b;
				5'd10: RGB = 24'h3c8f40;
				5'd11: RGB = 24'h2e6d34;
				5'd12: RGB = 24'hAF5423;
				5'd13: RGB = 24'h301602;
				5'd14: RGB = 24'h4b2507;
				5'd15: RGB = 24'h6D380E;
				5'd16: RGB = 24'h403f3f;
				5'd17: RGB = 24'h606060;
				5'd18: RGB = 24'hA6AFAB;
				5'd19: RGB = 24'h889694;
				default: RGB = 24'h0;
			endcase
			
			
			R = RGB[23:16];
			G = RGB[15:8];
			B = RGB[7:0];
		
		end
	
	
	
	
	endmodule
	