//-------------------------------------------------------------------------
//      lab8.sv                                                          --
//      Christine Chen                                                   --
//      Fall 2014                                                        --
//                                                                       --
//      Modified by Po-Han Huang                                         --
//      10/06/2017                                                       --
//                                                                       --
//      Fall 2017 Distribution                                           --
//                                                                       --
//      For use with ECE 385 Lab 8                                       --
//      UIUC ECE Department                                              --
//-------------------------------------------------------------------------


module lab8( input               CLOCK_50,
             input        [3:0]  KEY,          //bit 0 is set up as Reset
             output logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,HEX6,
             // VGA Interface 
             output logic [7:0]  VGA_R,        //VGA Red
                                 VGA_G,        //VGA Green
                                 VGA_B,        //VGA Blue
             output logic        VGA_CLK,      //VGA Clock
                                 VGA_SYNC_N,   //VGA Sync signal
                                 VGA_BLANK_N,  //VGA Blank signal
                                 VGA_VS,       //VGA virtical sync signal
                                 VGA_HS,       //VGA horizontal sync signal
             // CY7C67200 Interface
             inout  wire  [15:0] OTG_DATA,     //CY7C67200 Data bus 16 Bits
             output logic [1:0]  OTG_ADDR,     //CY7C67200 Address 2 Bits 
				 
             output logic        OTG_CS_N,     //CY7C67200 Chip Select
                                 OTG_RD_N,     //CY7C67200 Write
                                 OTG_WR_N,     //CY7C67200 Read
                                 OTG_RST_N,    //CY7C67200 Reset
             input               OTG_INT,      //CY7C67200 Interrupt
             // SDRAM Interface for Nios II Software
             output logic [12:0] DRAM_ADDR,    //SDRAM Address 13 Bits
             inout  wire  [31:0] DRAM_DQ,      //SDRAM Data 32 Bits
             output logic [1:0]  DRAM_BA,      //SDRAM Bank Address 2 Bits
             output logic [3:0]  DRAM_DQM,     //SDRAM Data Mast 4 Bits
             output logic        DRAM_RAS_N,   //SDRAM Row Address Strobe
                                 DRAM_CAS_N,   //SDRAM Column Address Strobe
                                 DRAM_CKE,     //SDRAM Clock Enable
                                 DRAM_WE_N,    //SDRAM Write Enable
                                 DRAM_CS_N,    //SDRAM Chip Select
                                 DRAM_CLK      //SDRAM Clock
                    );
    
    logic Reset_h, Clk, Reset_s, Start_s;
    logic [7:0] keycode, keycode2;
    
    assign Clk = CLOCK_50;
    always_ff @ (posedge Clk) begin
        Reset_h <= ~(KEY[0]);        // The push buttons are active low
		  Reset_s <= ~(KEY[1]);
		  Start_s <= ~(KEY[2]);
    end
    
    logic [1:0] hpi_addr;
    logic [15:0] hpi_data_in, hpi_data_out;
    logic hpi_r, hpi_w, hpi_cs, hpi_reset;
	 
	 logic [9:0] DrawX, DrawY;
	 logic is_ball;
	 
//	 logic Player_Draw_EN, Enemy_Draw_EN, Room_Draw_EN, Title_Draw_EN, Hud_Draw_EN, Transition_Draw_EN;
	 logic Done, isBlack, we, is_8, Draw_EN, DrawRoomEN, DrawHudEN, transition;
	 logic [4:0] data_Out, data_In, palette, FB_Data_In;
	 logic [14:0] read_address, FB_write_address;
	 logic [7:0] Red, Blue, Green;
	 logic [7:0] NewDrawX, NewDrawY, PlayerX, PlayerY, EnemyX, EnemyY;
	 logic [6:0] NewSpriteX, NewSpriteY;
	 logic [1:0] Player_behavior,Player_period, Enemy_behavior, Enemy_period;
	 
	 
	 logic [6:0] RoomSpriteX, RoomSpriteY, PlayerSpriteX, PlayerSpriteY, EnemySpriteX, EnemySpriteY, HudSpriteX, HudSpriteY;
	 logic [7:0] RoomDrawX, RoomDrawY, PlayerDrawX, PlayerDrawY, EnemyDrawX, EnemyDrawY, HudDrawX, HudDrawY;
	 logic Roomis_8, Playeris_8, Enemyis_8, Hudis_8, Draw_Room_Done, Draw_Hud_Done;
	 logic [3:0] Draw_state;
	 logic alive, Player_isLeft, Enemy_isLeft;
	 logic [7:0] totalEnemies;
	 logic thisRoomIsDead;
	 
	 logic EnemyAttack, PlayerAttack;
	 logic [2:0] PlayerHealth, EnemyHealth;
	 
	 logic [4:0] RoomAddr;
	 logic [7:0] RoomData;
	 logic [3:0] Doors;
	 logic [7:0] Room_Out, Room_Number;
	 logic [7:0] Room_Set [25];
	 assign RoomData = Room_Set[RoomAddr];
	 
	 

	 

	 
    
    // Interface between NIOS II and EZ-OTG chip
    hpi_io_intf hpi_io_inst(
                            .Clk(Clk),
                            .Reset(Reset_h),
                            // signals connected to NIOS II
                            .from_sw_address(hpi_addr),
                            .from_sw_data_in(hpi_data_in),
                            .from_sw_data_out(hpi_data_out),
                            .from_sw_r(hpi_r),
                            .from_sw_w(hpi_w),
                            .from_sw_cs(hpi_cs),
                            .from_sw_reset(hpi_reset),
                            // signals connected to EZ-OTG chip
                            .OTG_DATA(OTG_DATA),    
                            .OTG_ADDR(OTG_ADDR),    
                            .OTG_RD_N(OTG_RD_N),    
                            .OTG_WR_N(OTG_WR_N),    
                            .OTG_CS_N(OTG_CS_N),
                            .OTG_RST_N(OTG_RST_N)
    );
     
	  
	  
	 HexDriver hex_inst_4 (totalEnemies[3:0], HEX4);
    HexDriver hex_inst_5 (totalEnemies[7:4], HEX5);
	 HexDriver hex_inst_6 (thisRoomIsDead, HEX6);
     // You need to make sure that the port names here match the ports in Qsys-generated codes.
     lab7_soc nios_system(
                             .clk_clk(Clk),         
                             .reset_reset_n(1'b1),    // Never reset NIOS
                             .sdram_wire_addr(DRAM_ADDR), 
                             .sdram_wire_ba(DRAM_BA),   
                             .sdram_wire_cas_n(DRAM_CAS_N),
                             .sdram_wire_cke(DRAM_CKE),  
                             .sdram_wire_cs_n(DRAM_CS_N), 
                             .sdram_wire_dq(DRAM_DQ),   
                             .sdram_wire_dqm(DRAM_DQM),  
                             .sdram_wire_ras_n(DRAM_RAS_N),
                             .sdram_wire_we_n(DRAM_WE_N), 
                             .sdram_clk_clk(DRAM_CLK),
                             .keycode_export(keycode), 
									  .keycode2_export(keycode2), 
                             .otg_hpi_address_export(hpi_addr),
                             .otg_hpi_data_in_port(hpi_data_in),
                             .otg_hpi_data_out_port(hpi_data_out),
                             .otg_hpi_cs_export(hpi_cs),
                             .otg_hpi_r_export(hpi_r),
                             .otg_hpi_w_export(hpi_w),
                             .otg_hpi_reset_export(hpi_reset),
									  .reset_s_export(Reset_s),
//									  .Reg_ADDR(RoomAddr),
//									  .RoomData(RoomData),
									  .export_data_new_signal(Room_Out),
									  .room0_export(Room_Set[0]),
									  .room1_export(Room_Set[1]),      
									  .room10_export(Room_Set[10]),     
									  .room11_export(Room_Set[11]),     
									  .room12_export(Room_Set[12]),     
									  .room13_export(Room_Set[13]),     
									  .room14_export(Room_Set[14]),     
									  .room15_export(Room_Set[15]),     
									  .room16_export(Room_Set[16]),     
									  .room17_export(Room_Set[17]),     
									  .room18_export(Room_Set[18]),     
									  .room19_export(Room_Set[19]),     
									  .room2_export(Room_Set[2]),      
									  .room20_export(Room_Set[20]),     
									  .room21_export(Room_Set[21]),     
									  .room22_export(Room_Set[22]),     
									  .room23_export(Room_Set[23]),     
									  .room24_export(Room_Set[24]),     
									  .room3_export(Room_Set[3]),      
									  .room4_export(Room_Set[4]),      
									  .room5_export(Room_Set[5]),      
									  .room6_export(Room_Set[6]),      
									  .room7_export(Room_Set[7]),      
									  .room8_export(Room_Set[8]),      
									  .room9_export(Room_Set[9]),      
									  .roomnumber_export(Room_Number) 
    );
    
    // Use PLL to generate the 25MHZ VGA_CLK.
    // You will have to generate it on your own in simulation.
    vga_clk vga_clk_instance(.inclk0(Clk), .c0(VGA_CLK));
    
    // TODO: Fill in the connections for the rest of the modules 
    VGA_controller vga_controller_instance(.*,.Reset(Reset_h));
	 
    // Which signal should be frame_clk?
    //ball ball_instance(.*,.Reset((Reset_s | Reset_h)),.frame_clk(VGA_VS));
	 
		
	
	logic Start;
//	assign Start = 1'b0;
	
	always_comb 
	begin
		if (keycode == 8'd40)
			Start = 1'b1;
		else
			Start = 1'b0;
	end

	DrawController ISDU (.*, .CLK(Clk), .RESET(Reset_s|Reset_h), .DrawWait(1'b0),.Start,
			.Done(Done), .DrawRoomDone(Draw_Room_Done), .DrawHudDone(Draw_Hud_Done),
			.PlayerHealth, .EnemyHealth, .DrawRoomEN, .DrawHudEN, .transition, .totalEnemies
	); 
	 
	always_comb
	begin
		NewDrawX = 8'd0;
		NewDrawY = 8'd0;
		NewSpriteX = 7'd0;
		NewSpriteY = 7'd0;
		is_8 = 1'b0;
		Draw_EN = 1'b0;
		case(Draw_state)
			4'd0: 
			begin
				Draw_EN = 1'b0;
			end
			4'd1: 
			begin
				Draw_EN = 1'b0;
			end
			4'd2: 
			begin
				NewDrawX = RoomDrawX;
				NewDrawY = RoomDrawY;
				NewSpriteX = RoomSpriteX;
				NewSpriteY = RoomSpriteY;
				is_8 = Roomis_8;
				Draw_EN = 1'b1;
			end
			4'd3:
			begin
				NewDrawX = PlayerDrawX;
			   NewDrawY = PlayerDrawY;
			   NewSpriteX = PlayerSpriteX;
			   NewSpriteY = PlayerSpriteY;
				is_8 = Playeris_8;
				Draw_EN = 1'b1;
			end
			4'd4:
			begin
				NewDrawX = EnemyDrawX;
			   NewDrawY = EnemyDrawY;
			   NewSpriteX = EnemySpriteX;
			   NewSpriteY = EnemySpriteY;
				is_8 = Enemyis_8;
//				if(thisRoomIsDead)
//					Draw_EN = 1'b0;
				if ((EnemyHealth != 3'b0))
					Draw_EN = 1'b1;
				else
					Draw_EN = 1'b0;

//				NewDrawX = 8'd40;
//			   NewDrawY = 8'd40;
//			   NewSpriteX = 7'd56;
//			   NewSpriteY = 7'd32;
//				is_8 = 1'b1;
//				Draw_EN = 1'b1;
			end
			4'd5:
			begin
				NewDrawX = HudDrawX;
			   NewDrawY = HudDrawY;
			   NewSpriteX = HudSpriteX;
			   NewSpriteY = HudSpriteY;
				is_8 = Hudis_8;
				Draw_EN = 1'b1;
//				NewDrawX = 8'd16;
//			   NewDrawY = 8'd0;
//			   NewSpriteX = 7'd56;
//			   NewSpriteY = 7'd32;
//				is_8 = 1'b1;
//				Draw_EN = 1'b1;
			end
			4'd7: //Lose
			begin
			end
			4'd8: //Win
			begin
			end
		endcase
	
	end
	 
	 
	DrawRoom DR (.Done_Draw_FB(Done), .Draw_EN(DrawRoomEN), .Clk,.RESET(Reset_s) ,.Doors, .EnemyHealth, .Start,
			.NewDrawX(RoomDrawX), .NewDrawY(RoomDrawY), .NewSpriteX(RoomSpriteX), .NewSpriteY(RoomSpriteY), .is_8(Roomis_8), 
			.ALLDone(Draw_Room_Done) 
	); 
	 
	 
	Player_Controller PC (
			.*, .Reset((Reset_s | Reset_h)), .frame_clk(VGA_VS), .Start, .transition,
			.keycode, .keycode2, .PlayerX, .PlayerY,
			.behavior(Player_behavior), .period(Player_period), .isLeft(Player_isLeft)
	);
	
	DrawPlayer DP(
			.x(PlayerX), .y(PlayerY), .behavior(Player_behavior),.isLeft(Player_isLeft), .period(Player_period), 
			.NewDrawX(PlayerDrawX), .NewDrawY(PlayerDrawY), .SpriteX(PlayerSpriteX), .SpriteY(PlayerSpriteY), .is_8(Playeris_8)
	);
	
	
	Enemy_Controller EC (
			.*, .Reset((Reset_s | Reset_h)), .frame_clk(VGA_VS), .EnemyHealth, .Start,
			.PlayerX, .PlayerY, .EnemyX, .EnemyY,
			.behavior(Enemy_behavior), .period(Enemy_period), .isLeft(Enemy_isLeft)
	);
	
				  
	DrawEnemy DE(
			.x(EnemyX), .y(EnemyY), .behavior(Enemy_behavior), .isLeft(Enemy_isLeft), .period(Enemy_period), .EnemyHealth,
			.NewDrawX(EnemyDrawX), .NewDrawY(EnemyDrawY), .SpriteX(EnemySpriteX), .SpriteY(EnemySpriteY), .is_8(Enemyis_8)
	);
	
	

	always_comb
	begin
		if (Enemy_behavior == 2'd2)
			EnemyAttack = 1'd1;
		else
			EnemyAttack = 1'd0;
		if (Player_behavior == 2'd2)
			PlayerAttack = 1'd1;
		else
			PlayerAttack = 1'd0;
	end
	
	Health H(
			.*, .frame_clk(VGA_VS), .EnemyAttack, .PlayerAttack, .Reset(Reset_h | Reset_s), .transition,.Start,
			.PlayerHealth, .EnemyHealth
	);
	
	DrawHud DH(
			.*, .PlayerHealth, .Done, .Draw_EN(DrawHudEN), .Clk, .RESET(Reset_h | Reset_s), .Start,
			.NewDrawX(HudDrawX), .NewDrawY(HudDrawY), .NewSpriteX(HudSpriteX), .NewSpriteY(HudSpriteY),
			.is_8(Hudis_8), .AllDone(Draw_Hud_Done)
	);
	 
	DungeonController DC (
			.*, .RESET(Reset_h | Reset_s), .PlayerX, .PlayerY, .RoomData, .EnemyHealth, .RoomAddr, .Doors, .transition,
			.frame_Clk(VGA_VS), .Start
	);
	

	 



	 
	

//	 Draw_Frame_Buffer DFB (.CLK(Clk), .RESET(Reset_s), .DrawX(NewDrawX), .DrawY(NewDrawY),
//			.SpriteX(NewSpriteX), .SpriteY(NewSpriteY), .is_8, .Draw_EN, .Done, .we, .palette(FB_Data_In),
//			.write_address(FB_write_address)
//		);
	
	Draw_Frame_Buffer DFB (.CLK(Clk), .RESET(Reset_s), .DrawX(NewDrawX), .DrawY(NewDrawY),
			.SpriteX(NewSpriteX), .SpriteY(NewSpriteY), .is_8, .Start, .Draw_EN(Draw_EN), .Done, .we, .palette(FB_Data_In),
			.write_address(FB_write_address)
	);

//	FrameBuffer FB(.data_In(5'd19), .write_address(15'd1), .read_address(15'd0), .we(1'b1), .Clk, .data_Out);

	FrameBuffer FB(.data_In(FB_Data_In), .write_address(FB_write_address), .read_address,.Clk,.data_Out(palette),.we);
		
   color_mapper color_instance(.*, .read_address, .isBlack);
	
	Palette PL (.VGA_R(Red),.VGA_G(Green),.VGA_B(Blue),.color(palette));
	 

	always_comb
	begin
		if(isBlack)
		begin
			if(Draw_state == 4'd8)
			begin
				VGA_R = 8'd235;
				VGA_G = 8'd64;
				VGA_B = 8'd52;
			end
			else if(Draw_state == 4'd7)
			begin
				VGA_R = 8'd112;
				VGA_G = 8'd230;
				VGA_B = 8'd44;
			end
			else
			begin
				VGA_R = 8'h00;
				VGA_G = 8'h00;
				VGA_B = 8'h00;
			end
		end
		else
		begin
			VGA_R = Red;
			VGA_G = Green;
			VGA_B = Blue;
		end
	end
	 
	 
	 
	 
	 


	
	 
	 
    // Display keycode on hex display
    HexDriver hex_inst_0 (keycode[3:0], HEX0);
    HexDriver hex_inst_1 (keycode[7:4], HEX1);
	 HexDriver hex_inst_2 (keycode2[3:0], HEX2);
    HexDriver hex_inst_3 (keycode2[7:4], HEX3);
	 
    
    /**************************************************************************************
        ATTENTION! Please answer the following quesiton in your lab report! Points will be allocated for the answers!
        Hidden Question #1/2:
        What are the advantages and/or disadvantages of using a USB interface over PS/2 interface to
             connect to the keyboard? List any two.  Give an answer in your Post-Lab.
    **************************************************************************************/
endmodule
