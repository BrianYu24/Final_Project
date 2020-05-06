/************************************************************************
Avalon-MM Interface for AES Decryption IP Core

Dong Kai Wang, Fall 2017

For use with ECE 385 Experiment 9
University of Illinois ECE Department

Register Map:

 0-3 : 4x 32bit AES Key
 4-7 : 4x 32bit AES Encrypted Message
 8-11: 4x 32bit AES Decrypted Message
   12: Not Used
	13: Not Used
   14: 32bit Start Register
   15: 32bit Done Register

************************************************************************/

module Rooms (
	// Avalon Clock Input
	input logic CLK,
	
	// Avalon Reset Input
	input logic RESET,
	
	// Avalon-MM Slave Signals
	input  logic AVL_READ,					// Avalon-MM Read
	input  logic AVL_WRITE,					// Avalon-MM Write
	input  logic AVL_CS,						// Avalon-MM Chip Select
	input  logic AVL_BYTE_EN,		// Avalon-MM Byte Enable
	input  logic [4:0] AVL_ADDR,			// Avalon-MM Address
	input  logic [7:0] AVL_WRITEDATA,	// Avalon-MM Write Data
	output logic [7:0] AVL_READDATA,	// Avalon-MM Read Data
	output logic [7:0] Export_Data
	
//	input  logic [4:0] Reg_ADDR,
//	output logic [7:0] RoomData
	
);
	
	logic[7:0] WriteData;
	logic[7:0] Reg [25];
	
	assign Export_Data = Reg[12];
	

	
	always_ff @(posedge CLK)
	begin
		if (RESET)
		begin
			Reg[0] <= 8'b0;
			Reg[1] <= 8'b0;
			Reg[2] <= 8'b0;
			Reg[3] <= 8'b0;
			Reg[4] <= 8'b0;
			Reg[5] <= 8'b0;
			Reg[6] <= 8'b0;
			Reg[7] <= 8'b0;
			Reg[8] <= 8'b0;
			Reg[9] <= 8'b0;
			Reg[10] <= 8'b0;
			Reg[11] <= 8'b0;
			Reg[12] <= 8'b0;
			Reg[13] <= 8'b0;
			Reg[14] <= 8'b0;
			Reg[15] <= 8'b0;
			Reg[16] <= 8'b0;
			Reg[17] <= 8'b0;
			Reg[18] <= 8'b0;
			Reg[19] <= 8'b0;
			Reg[20] <= 8'b0;
			Reg[21] <= 8'b0;
			Reg[22] <= 8'b0;
			Reg[23] <= 8'b0;
			Reg[24] <= 8'b0;
		end
		
		else if(AVL_WRITE == 1'b1 && AVL_CS== 1'b1)
		begin
			Reg[AVL_ADDR] <= WriteData;
		end
	end
	
	
	always_comb 
	begin
		if (AVL_READ == 1'b1 && AVL_CS == 1'b1)
			AVL_READDATA = Reg[AVL_ADDR];
		else
			AVL_READDATA = 8'b0;
		
	end
	


endmodule
