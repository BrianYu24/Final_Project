module testbench();
timeunit 10ns;
timeprecision 1ns;



 logic        CLOCK_50;
 logic [3:0]  KEY;
 logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

 logic [7:0]  VGA_R, VGA_G, VGA_B;        
 logic        VGA_CLK,   VGA_SYNC_N,   VGA_BLANK_N,  VGA_VS,   VGA_HS;      

 logic [15:0] OTG_DATA;   
 logic [1:0]  OTG_ADDR;     

 logic        OTG_CS_N,  OTG_RD_N,   OTG_WR_N,  OTG_RST_N,  OTG_INT;     

 logic [12:0] DRAM_ADDR;   
 wire  [31:0] DRAM_DQ;      
 logic [1:0]  DRAM_BA;     
 logic [3:0]  DRAM_DQM;    
 logic        DRAM_RAS_N,   DRAM_CAS_N, DRAM_CKE,   DRAM_WE_N, DRAM_CS_N,DRAM_CLK; 



 always begin : CLOCK_GENERATION
 #1 CLOCK_50 = ~CLOCK_50;
 end
 initial begin
	CLOCK_50 = 0;
 end
 lab8 tp(.*);
 
 initial begin: TEST_VECTORS

 
 
 //test case 1

 
 end
endmodule 