
// Intel / Altera Cyclone 10 GX board test project
// General R&D, 2018

module main(

	// SFP1
			input sfp1_rd_n,
			input sfp1_rd_p,
			output sfp1_td_n,
			output sfp1_td_p,
			input refclkr_sfp1_n,
			input refclkr_sfp1_p,

			input sfp1_rxlos,					// board pullup  // 0 = OK
			input sfp1_mod_abs,				// board pullup // 0 = module inserted
			output sfp1_rs0,					// board pullup
			output sfp1_rs1,					// board pullup
			output sfp1_tx_dis,				// pulled up in SFP
			output sfp1_txflt,				// board pullup

			inout sfp1_scl,
			inout sfp1_sda,

	// SFP2
			input sfp2_rd_n,
			input sfp2_rd_p,
			output sfp2_td_n,
			output sfp2_td_p,
			input refclkr_sfp2_n,
			input refclkr_sfp2_p,

			input sfp2_rxlos,					// board pullup  // 0 = OK
			input sfp2_mod_abs,				// board pullup // 0 = module inserted
			output sfp2_rs0,					// board pullup
			output sfp2_rs1,					// board pullup
			output sfp2_tx_dis,				// pulled up in SFP
			output sfp2_txflt,				// board pullup

			inout sfp2_scl,
			inout sfp2_sda,

	// High speed FMC lanes
			input dp2_m2c_n,
			input dp2_m2c_p,
			input dp3_m2c_n,
			input dp3_m2c_p,
			input dp4_m2c_n,
			input dp4_m2c_p,

			output dp1_c2m_n,
			output dp1_c2m_p,
			output dp2_c2m_n,
			output dp2_c2m_p,
			output dp3_c2m_n,
			output dp3_c2m_p,
			output dp4_c2m_n,
			output dp4_c2m_p,

	// REFCLK
			inout refclkr_sfp1_n,
			inout refclkr_sfp1_p,
			inout refclkr_sfp2_n,
			inout refclkr_sfp2_p,

			inout refclkr_gxd_n,
			inout refclkr_gxd_p,
			inout gbtclk0r_m2c_n,
			inout gbtclk0r_m2c_p,

	// I2C interfaces
			inout i2c_fpga_scl,
			inout i2c_fpga_sda,

			inout fmc_sda,
			inout fmc_scl,

			inout fmc_i2c_mux_sda,
			inout fmc_i2c_mux_scl,

			inout fmc_i2c_scl2,
			inout fmc_i2c_sda2,

	// FMC HPC single-ended IO
			input data0,
			input clkusr_100m,
			input fmc_smbus_clk,
			input fmc_trigger,
			input fmc_en_1v8,
			input fmc_en_5v0,
			input fmc_muxmode1,
			input fmc_adc_mode,
			input fmc_ha22,
			input fmc_fpga_ha17,
			input fmc_nreset,
			input fmc_mosi,
			input fmc_cam_res_s,
			input fmc_nss,
			input fmc_sclk,
			input fmc_pg,
			input fmc_fpga_ha13,
			input vclk1_out_s,
			input fmc_en_vdd33,
			input fmc_smbus_dat,
			input fmc_en_other_pwr,
			input fmc_enable_vddca,
			input fmc_nc_trigger,
			input muxmode_0,
			input muxmode_1,
			input fmc_hdmio_clk,
			input fmc_hdmii_llc,
			input fmc_en_sw,
			input fmc_miso,
			input fmc_prsnt,

			output [4:1]led,

			input refclk_100m_n,
			input refclk_100m_p,

			input fmc_sync_n,
			input fmc_sync_p,

			input clk0_out_n,
			input clk0_out_p,

			input cam_clkout_n,
			input cam_clkout_p,

	// FMC HPC differential IO
			output fmc_la01_n,
			output fmc_la01_p,
			output fmc_la02_n,
			output fmc_la02_p,
			output fmc_la03_n,
			output fmc_la03_p,
			output fmc_la05_n,
			output fmc_la05_p,
			output fmc_la06_n,
			output fmc_la06_p,
			output fmc_la07_n,
			output fmc_la07_p,
			output fmc_la08_n,
			output fmc_la08_p,
			output fmc_la09_n,
			output fmc_la09_p,
			output fmc_la10_n,
			output fmc_la10_p,
			output fmc_la11_n,
			output fmc_la11_p,
			output fmc_la12_n,
			output fmc_la12_p,
			output fmc_la13_n,
			output fmc_la13_p,
			output fmc_la14_n,
			output fmc_la14_p,
			output fmc_la15_n,
			output fmc_la15_p,
			output fmc_la16_n,
			output fmc_la16_p,
			output fmc_la17_n,
			output fmc_la17_p,
			output fmc_la18_n,
			output fmc_la18_p,
			output fmc_la19_n,
			output fmc_la19_p,
			output fmc_la21_n,
			output fmc_la21_p,
			output fmc_la23_n,
			output fmc_la23_p,
			output fmc_la26_n,
			output fmc_la26_p,
			output fmc_la27_n,
			output fmc_la27_p,
			output fmc_la28_n,
			output fmc_la28_p,
			output fmc_la29_n,
			output fmc_la29_p,
			output fmc_la30_n,
			output fmc_la30_p,
			output fmc_la31_n,
			output fmc_la31_p,
			output fmc_la32_n,
			output fmc_la32_p,
			output fmc_la33_n,
			output fmc_la33_p,

			output fmc_ha02_n,
			output fmc_ha02_p,
			output fmc_ha03_n,
			output fmc_ha03_p,
			output fmc_ha04_n,
			output fmc_ha04_p,
			output fmc_ha05_n,
			output fmc_ha05_p,
			output fmc_ha06_n,
			output fmc_ha06_p,
			output fmc_ha07_n,
			output fmc_ha07_p,
			output fmc_ha08_n,
			output fmc_ha08_p,
			output fmc_ha09_n,
			output fmc_ha09_p,
			output fmc_ha10_n,
			output fmc_ha10_p,
			output fmc_ha11_n,
			output fmc_ha11_p,
			output fmc_ha13_n,
			output fmc_ha13_p,
			output fmc_ha21_n,
			output fmc_ha21_p,

			output fmc_hb01_n,
			output fmc_hb01_p,
			output fmc_hb07_n,
			output fmc_hb07_p,
			output fmc_hb17_n,
			output fmc_hb17_p,
			output fmc_hb18_n,
			output fmc_hb18_p

);

assign sfp1_rs0 = 1'b1;
assign sfp1_rs1 = 1'b1;
assign sfp1_txflt = 1'b1;

assign sfp2_rs0 = 1'b1;
assign sfp2_rs1 = 1'b1;
assign sfp2_txflt = 1'b1;

assign sfp1_tx_dis = sfp1_mod_abs;
assign sfp2_tx_dis = sfp2_mod_abs;




endmodule
