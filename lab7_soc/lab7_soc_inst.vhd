	component lab7_soc is
		port (
			clk_clk                : in    std_logic                     := 'X';             -- clk
			keycode_export         : out   std_logic_vector(7 downto 0);                     -- export
			keycode2_export        : out   std_logic_vector(7 downto 0);                     -- export
			otg_hpi_address_export : out   std_logic_vector(1 downto 0);                     -- export
			otg_hpi_cs_export      : out   std_logic;                                        -- export
			otg_hpi_data_in_port   : in    std_logic_vector(15 downto 0) := (others => 'X'); -- in_port
			otg_hpi_data_out_port  : out   std_logic_vector(15 downto 0);                    -- out_port
			otg_hpi_r_export       : out   std_logic;                                        -- export
			otg_hpi_reset_export   : out   std_logic;                                        -- export
			otg_hpi_w_export       : out   std_logic;                                        -- export
			reset_reset_n          : in    std_logic                     := 'X';             -- reset_n
			reset_s_export         : in    std_logic                     := 'X';             -- export
			roomnumber_export      : out   std_logic_vector(7 downto 0);                     -- export
			sdram_clk_clk          : out   std_logic;                                        -- clk
			sdram_wire_addr        : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba          : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n       : out   std_logic;                                        -- cas_n
			sdram_wire_cke         : out   std_logic;                                        -- cke
			sdram_wire_cs_n        : out   std_logic;                                        -- cs_n
			sdram_wire_dq          : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm         : out   std_logic_vector(3 downto 0);                     -- dqm
			sdram_wire_ras_n       : out   std_logic;                                        -- ras_n
			sdram_wire_we_n        : out   std_logic;                                        -- we_n
			export_data_new_signal : out   std_logic_vector(7 downto 0);                     -- new_signal
			room0_export           : out   std_logic_vector(7 downto 0);                     -- export
			room1_export           : out   std_logic_vector(7 downto 0);                     -- export
			room2_export           : out   std_logic_vector(7 downto 0);                     -- export
			room3_export           : out   std_logic_vector(7 downto 0);                     -- export
			room4_export           : out   std_logic_vector(7 downto 0);                     -- export
			room5_export           : out   std_logic_vector(7 downto 0);                     -- export
			room6_export           : out   std_logic_vector(7 downto 0);                     -- export
			room7_export           : out   std_logic_vector(7 downto 0);                     -- export
			room8_export           : out   std_logic_vector(7 downto 0);                     -- export
			room9_export           : out   std_logic_vector(7 downto 0);                     -- export
			room10_export          : out   std_logic_vector(7 downto 0);                     -- export
			room11_export          : out   std_logic_vector(7 downto 0);                     -- export
			room12_export          : out   std_logic_vector(7 downto 0);                     -- export
			room13_export          : out   std_logic_vector(7 downto 0);                     -- export
			room14_export          : out   std_logic_vector(7 downto 0);                     -- export
			room15_export          : out   std_logic_vector(7 downto 0);                     -- export
			room16_export          : out   std_logic_vector(7 downto 0);                     -- export
			room17_export          : out   std_logic_vector(7 downto 0);                     -- export
			room18_export          : out   std_logic_vector(7 downto 0);                     -- export
			room19_export          : out   std_logic_vector(7 downto 0);                     -- export
			room20_export          : out   std_logic_vector(7 downto 0);                     -- export
			room21_export          : out   std_logic_vector(7 downto 0);                     -- export
			room22_export          : out   std_logic_vector(7 downto 0);                     -- export
			room23_export          : out   std_logic_vector(7 downto 0);                     -- export
			room24_export          : out   std_logic_vector(7 downto 0)                      -- export
		);
	end component lab7_soc;

	u0 : component lab7_soc
		port map (
			clk_clk                => CONNECTED_TO_clk_clk,                --             clk.clk
			keycode_export         => CONNECTED_TO_keycode_export,         --         keycode.export
			keycode2_export        => CONNECTED_TO_keycode2_export,        --        keycode2.export
			otg_hpi_address_export => CONNECTED_TO_otg_hpi_address_export, -- otg_hpi_address.export
			otg_hpi_cs_export      => CONNECTED_TO_otg_hpi_cs_export,      --      otg_hpi_cs.export
			otg_hpi_data_in_port   => CONNECTED_TO_otg_hpi_data_in_port,   --    otg_hpi_data.in_port
			otg_hpi_data_out_port  => CONNECTED_TO_otg_hpi_data_out_port,  --                .out_port
			otg_hpi_r_export       => CONNECTED_TO_otg_hpi_r_export,       --       otg_hpi_r.export
			otg_hpi_reset_export   => CONNECTED_TO_otg_hpi_reset_export,   --   otg_hpi_reset.export
			otg_hpi_w_export       => CONNECTED_TO_otg_hpi_w_export,       --       otg_hpi_w.export
			reset_reset_n          => CONNECTED_TO_reset_reset_n,          --           reset.reset_n
			reset_s_export         => CONNECTED_TO_reset_s_export,         --         reset_s.export
			roomnumber_export      => CONNECTED_TO_roomnumber_export,      --      roomnumber.export
			sdram_clk_clk          => CONNECTED_TO_sdram_clk_clk,          --       sdram_clk.clk
			sdram_wire_addr        => CONNECTED_TO_sdram_wire_addr,        --      sdram_wire.addr
			sdram_wire_ba          => CONNECTED_TO_sdram_wire_ba,          --                .ba
			sdram_wire_cas_n       => CONNECTED_TO_sdram_wire_cas_n,       --                .cas_n
			sdram_wire_cke         => CONNECTED_TO_sdram_wire_cke,         --                .cke
			sdram_wire_cs_n        => CONNECTED_TO_sdram_wire_cs_n,        --                .cs_n
			sdram_wire_dq          => CONNECTED_TO_sdram_wire_dq,          --                .dq
			sdram_wire_dqm         => CONNECTED_TO_sdram_wire_dqm,         --                .dqm
			sdram_wire_ras_n       => CONNECTED_TO_sdram_wire_ras_n,       --                .ras_n
			sdram_wire_we_n        => CONNECTED_TO_sdram_wire_we_n,        --                .we_n
			export_data_new_signal => CONNECTED_TO_export_data_new_signal, --     export_data.new_signal
			room0_export           => CONNECTED_TO_room0_export,           --           room0.export
			room1_export           => CONNECTED_TO_room1_export,           --           room1.export
			room2_export           => CONNECTED_TO_room2_export,           --           room2.export
			room3_export           => CONNECTED_TO_room3_export,           --           room3.export
			room4_export           => CONNECTED_TO_room4_export,           --           room4.export
			room5_export           => CONNECTED_TO_room5_export,           --           room5.export
			room6_export           => CONNECTED_TO_room6_export,           --           room6.export
			room7_export           => CONNECTED_TO_room7_export,           --           room7.export
			room8_export           => CONNECTED_TO_room8_export,           --           room8.export
			room9_export           => CONNECTED_TO_room9_export,           --           room9.export
			room10_export          => CONNECTED_TO_room10_export,          --          room10.export
			room11_export          => CONNECTED_TO_room11_export,          --          room11.export
			room12_export          => CONNECTED_TO_room12_export,          --          room12.export
			room13_export          => CONNECTED_TO_room13_export,          --          room13.export
			room14_export          => CONNECTED_TO_room14_export,          --          room14.export
			room15_export          => CONNECTED_TO_room15_export,          --          room15.export
			room16_export          => CONNECTED_TO_room16_export,          --          room16.export
			room17_export          => CONNECTED_TO_room17_export,          --          room17.export
			room18_export          => CONNECTED_TO_room18_export,          --          room18.export
			room19_export          => CONNECTED_TO_room19_export,          --          room19.export
			room20_export          => CONNECTED_TO_room20_export,          --          room20.export
			room21_export          => CONNECTED_TO_room21_export,          --          room21.export
			room22_export          => CONNECTED_TO_room22_export,          --          room22.export
			room23_export          => CONNECTED_TO_room23_export,          --          room23.export
			room24_export          => CONNECTED_TO_room24_export           --          room24.export
		);

