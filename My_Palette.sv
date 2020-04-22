	module Palette(
		input [4:0] color,
		output [7:0] VGA_R, VGA_G, VGA_B,
	);
	
		logic [23:0] palette [20];
		logic [23:0] RGB;
	
		always_comb
		begin
			palette = {24'hFF00FF,24'hEEC39A,24'hbb9e79,24'hcdac85,24'hB40909,24'hFFFFFF,24'h000000,24'h6ED5FF,24'h439F43,24'h36803b,24'h3c8f40,24'h2e6d34,24'hAF5423,24'h301602,24'h4b2507,24'h6D380E,24'h403f3f,24'h606060,24'hA6AFAB,24'h889694};
			RGB = palette[color];
			VGA_R = RGB[23:16];
			VGA_G = RGB[15:8];
			VGA_B = RGB[7:0];
		
		end
	
	
	
	
	endmodule
	