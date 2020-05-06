
module lab7_soc (
	clk_clk,
	keycode_export,
	keycode2_export,
	otg_hpi_address_export,
	otg_hpi_cs_export,
	otg_hpi_data_in_port,
	otg_hpi_data_out_port,
	otg_hpi_r_export,
	otg_hpi_reset_export,
	otg_hpi_w_export,
	reset_reset_n,
	reset_s_export,
	roomnumber_export,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	export_data_new_signal,
	room0_export,
	room1_export,
	room2_export,
	room3_export,
	room4_export,
	room5_export,
	room6_export,
	room7_export,
	room8_export,
	room9_export,
	room10_export,
	room11_export,
	room12_export,
	room13_export,
	room14_export,
	room15_export,
	room16_export,
	room17_export,
	room18_export,
	room19_export,
	room20_export,
	room21_export,
	room22_export,
	room23_export,
	room24_export);	

	input		clk_clk;
	output	[7:0]	keycode_export;
	output	[7:0]	keycode2_export;
	output	[1:0]	otg_hpi_address_export;
	output		otg_hpi_cs_export;
	input	[15:0]	otg_hpi_data_in_port;
	output	[15:0]	otg_hpi_data_out_port;
	output		otg_hpi_r_export;
	output		otg_hpi_reset_export;
	output		otg_hpi_w_export;
	input		reset_reset_n;
	input		reset_s_export;
	output	[7:0]	roomnumber_export;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[31:0]	sdram_wire_dq;
	output	[3:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	output	[7:0]	export_data_new_signal;
	output	[7:0]	room0_export;
	output	[7:0]	room1_export;
	output	[7:0]	room2_export;
	output	[7:0]	room3_export;
	output	[7:0]	room4_export;
	output	[7:0]	room5_export;
	output	[7:0]	room6_export;
	output	[7:0]	room7_export;
	output	[7:0]	room8_export;
	output	[7:0]	room9_export;
	output	[7:0]	room10_export;
	output	[7:0]	room11_export;
	output	[7:0]	room12_export;
	output	[7:0]	room13_export;
	output	[7:0]	room14_export;
	output	[7:0]	room15_export;
	output	[7:0]	room16_export;
	output	[7:0]	room17_export;
	output	[7:0]	room18_export;
	output	[7:0]	room19_export;
	output	[7:0]	room20_export;
	output	[7:0]	room21_export;
	output	[7:0]	room22_export;
	output	[7:0]	room23_export;
	output	[7:0]	room24_export;
endmodule
