/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  FrameBuffer
(
		input [4:0] data_In8[0:63],
		input [4:0] date_In12[0:143],
		input [18:0] write_address, read_address,
		input we, Clk,is_8

		output logic [4:0] data_Out
);

// mem has width of 3 bits and a total of 400 addresses
logic [4:0] mem[0:419999];


//resize here

always_ff @ (posedge Clk) begin
	if (we)
	begin
		case(is_8)
		1'b1:
			for (int i = 0; i<8; i++)
			begin
				for (int j = 0; j<8; j++)
				begin
					mem[write_address+j+i*800] <= data_In8[j+i*8];
				end
			end
		
		1'b0:
			for (int i = 0; i<12; i++)
			begin
				for (int j = 0; j<12; j++)
				begin
					mem[write_address+j+i*800] <= data_In12[j+i*12];
				end
			end
		
	end
	
	data_Out<= mem[read_address];
end

endmodule
