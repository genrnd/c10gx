
// Intel / Altera Cyclone 10 GX board test project
// General R&D team, 2018

module main(

	// SFP1
	input sfp1_rd_n,
	input sfp1_rd_p,
	output sfp1_td_n,
	output sfp1_td_p,
	input refclkr_sfp1_n
	input refclkr_sfp1_p

	// SFP2
	input sfp2_rd_n,
	input sfp2_rd_p,
	output sfp2_td_n,
	output sfp2_td_p,
	input refclkr_sfp2_n
	input refclkr_sfp2_p

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

	set_location_assignment PIN_N21 -to refclkr_gxd_n
	set_location_assignment PIN_N22 -to refclkr_gxd_p
	set_location_assignment PIN_L21 -to gbtclk0r_m2c_n
	set_location_assignment PIN_L22 -to gbtclk0r_m2c_p

	set_location_assignment PIN_AD7 -to sfp1_rs0
	set_location_assignment PIN_AE6 -to sfp1_scl
	set_location_assignment PIN_AF8 -to sfp1_tx_dis
	set_location_assignment PIN_AF7 -to sfp1_sda
	set_location_assignment PIN_AD8 -to sfp1_rs1
	set_location_assignment PIN_AC10 -to sfp1_mod_abs
	set_location_assignment PIN_AB5 -to sfp1_txflt
	set_location_assignment PIN_AC5 -to sfp1_rxlos

	set_location_assignment PIN_AA11 -to sfp2_rs0
	set_location_assignment PIN_AD10 -to sfp2_scl
	set_location_assignment PIN_Y10 -to sfp2_tx_dis
	set_location_assignment PIN_AD12 -to sfp2_sda
	set_location_assignment PIN_Y14 -to sfp2_rs1
	set_location_assignment PIN_AB14 -to sfp2_mod_abs
	set_location_assignment PIN_AB13 -to sfp2_txflt
	set_location_assignment PIN_AD13 -to sfp2_rxlos

	set_location_assignment PIN_AE5 -to data0
	set_location_assignment PIN_AA14 -to fmc_nc_trigger
	set_location_assignment PIN_Y15 -to fmc_mosi
	set_location_assignment PIN_AC13 -to clkusr_100m

	set_location_assignment PIN_W18 -to fmc_smbus_clk
	set_location_assignment PIN_W19 -to fmc_en_5v0
	set_location_assignment PIN_Y21 -to i2c_fpga_sda
	set_location_assignment PIN_AA21 -to i2c_fpga_scl
	set_location_assignment PIN_Y19 -to fmc_ha22
	set_location_assignment PIN_Y20 -to fmc_en_vdd33
	set_location_assignment PIN_W17 -to fmc_en_other_pwr
	set_location_assignment PIN_Y17 -to fmc_fpga_ha17
	set_location_assignment PIN_AC20 -to fmc_en_1v8
	set_location_assignment PIN_AC21 -to fmc_muxmodel
	set_location_assignment PIN_AA18 -to fmc_sclk
	set_location_assignment PIN_AB18 -to fmc_trigger
	set_location_assignment PIN_AD17 -to fmc_miso
	set_location_assignment PIN_AE17 -to fmc_nss
	set_location_assignment PIN_AF13 -to fmc_smbus_dat
	set_location_assignment PIN_AF14 -to fmc_nreset

	set_location_assignment PIN_AC18 -to fmc_clk0_m2c_n
	set_location_assignment PIN_AD18 -to fmc_clk0_m2c_p
	set_location_assignment PIN_AE19 -to refclk_100m_n
	set_location_assignment PIN_AF19 -to refclk_100m_p
	set_location_assignment PIN_AB19 -to fmc_clk_in_n
	set_location_assignment PIN_AA19 -to fmc_clk_in_p
	set_location_assignment PIN_AF18 -to fmc_adc_mode

	set_location_assignment PIN_A19 -to fmc_en_sw
	set_location_assignment PIN_D13 -to fmc_i2c_scl2
	set_location_assignment PIN_D12 -to fmc_i2c_sda2
	set_location_assignment PIN_C13 -to fmc_pg

	set_location_assignment PIN_C18 -to clk0_out_n
	set_location_assignment PIN_B18 -to clk0_out_p
	set_location_assignment PIN_C16 -to cam_clkout_n
	set_location_assignment PIN_C17 -to cam_clkout_p

	set_location_assignment PIN_M1 -to fmc_monitor2
	set_location_assignment PIN_L1 -to fmc_prsnt
	set_location_assignment PIN_R2 -to fmc_enable_vddca
	set_location_assignment PIN_R1 -to fmc_muxmode0

	set_location_assignment PIN_M3 -to fmc_hdmio_clk
	set_location_assignment PIN_L3 -to fmc_hdmii_llc
	set_location_assignment PIN_P5 -to fmc_sync_n
	set_location_assignment PIN_R5 -to fmc_sync_p

	set_location_assignment PIN_C1 -to led4
	set_location_assignment PIN_B1 -to led3
	set_location_assignment PIN_A3 -to led2
	set_location_assignment PIN_A2 -to led1
	set_location_assignment PIN_E2 -to led6
	set_location_assignment PIN_E1 -to led5

	set_location_assignment PIN_F17 -to fmc_la01_n
	set_location_assignment PIN_E17 -to fmc_la01_p
	set_location_assignment PIN_E19 -to fmc_la02_n
	set_location_assignment PIN_D19 -to fmc_la02_p
	set_location_assignment PIN_B11 -to fmc_la03_n
	set_location_assignment PIN_A11 -to fmc_la03_p
	set_location_assignment PIN_H3 -to fmc_la05_n
	set_location_assignment PIN_G3 -to fmc_la05_p
	set_location_assignment PIN_C12 -to fmc_la06_n
	set_location_assignment PIN_C11 -to fmc_la06_p
	set_location_assignment PIN_F16 -to fmc_la07_n
	set_location_assignment PIN_E16 -to fmc_la07_p
	set_location_assignment PIN_H1 -to fmc_la08_n
	set_location_assignment PIN_G1 -to fmc_la08_p
	set_location_assignment PIN_H6 -to fmc_la09_n
	set_location_assignment PIN_H5 -to fmc_la09_p
	set_location_assignment PIN_L2 -to fmc_la10_n
	set_location_assignment PIN_K1 -to fmc_la10_p
	set_location_assignment PIN_K5 -to fmc_la11_n
	set_location_assignment PIN_J5 -to fmc_la11_p
	set_location_assignment PIN_K4 -to fmc_la12_n
	set_location_assignment PIN_J4 -to fmc_la12_p
	set_location_assignment PIN_P2 -to fmc_la13_n
	set_location_assignment PIN_N1 -to fmc_la13_p
	set_location_assignment PIN_N5 -to fmc_la14_n
	set_location_assignment PIN_M5 -to fmc_la14_p
	set_location_assignment PIN_T2 -to fmc_la15_n
	set_location_assignment PIN_T1 -to fmc_la15_p
	set_location_assignment PIN_K2 -to fmc_la16_n
	set_location_assignment PIN_J2 -to fmc_la16_p
	set_location_assignment PIN_N3 -to fmc_la17_n
	set_location_assignment PIN_N2 -to fmc_la17_p
	set_location_assignment PIN_R4 -to fmc_la18_n
	set_location_assignment PIN_T4 -to fmc_la18_p
	set_location_assignment PIN_P4 -to fmc_la19_n
	set_location_assignment PIN_P3 -to fmc_la19_p
	set_location_assignment PIN_U1 -to fmc_la21_n
	set_location_assignment PIN_V1 -to fmc_la21_p
	set_location_assignment PIN_U5 -to fmc_la23_n
	set_location_assignment PIN_U4 -to fmc_la23_p
	set_location_assignment PIN_AF12 -to fmc_la26_n
	set_location_assignment PIN_AF11 -to fmc_la26_p
	set_location_assignment PIN_AE10 -to fmc_la27_n
	set_location_assignment PIN_AF9 -to fmc_la27_p
	set_location_assignment PIN_AB15 -to fmc_la28_n
	set_location_assignment PIN_AC15 -to fmc_la28_p
	set_location_assignment PIN_AD15 -to fmc_la29_n
	set_location_assignment PIN_AD14 -to fmc_la29_p
	set_location_assignment PIN_AE15 -to fmc_la30_n
	set_location_assignment PIN_AE14 -to fmc_la30_p
	set_location_assignment PIN_AA17 -to fmc_la31_n
	set_location_assignment PIN_AB16 -to fmc_la31_p
	set_location_assignment PIN_AB20 -to fmc_la32_n
	set_location_assignment PIN_AB21 -to fmc_la32_p
	set_location_assignment PIN_AE16 -to fmc_la33_n
	set_location_assignment PIN_AF16 -to fmc_la33_p

	set_location_assignment PIN_G19 -to fmc_ha02_n
	set_location_assignment PIN_G20 -to fmc_ha02_p
	set_location_assignment PIN_F21 -to fmc_ha03_n
	set_location_assignment PIN_E21 -to fmc_ha03_p
	set_location_assignment PIN_D17 -to fmc_ha04_n
	set_location_assignment PIN_D18 -to fmc_ha04_p
	set_location_assignment PIN_C20 -to fmc_ha05_n
	set_location_assignment PIN_C21 -to fmc_ha05_p
	set_location_assignment PIN_A13 -to fmc_ha06_n
	set_location_assignment PIN_A12 -to fmc_ha06_p
	set_location_assignment PIN_A17 -to fmc_ha07_n
	set_location_assignment PIN_A18 -to fmc_ha07_p
	set_location_assignment PIN_C15 -to fmc_ha08_n
	set_location_assignment PIN_B15 -to fmc_ha08_p
	set_location_assignment PIN_F18 -to fmc_ha09_n
	set_location_assignment PIN_F19 -to fmc_ha09_p
	set_location_assignment PIN_J3 -to fmc_ha10_n
	set_location_assignment PIN_H2 -to fmc_ha10_p
	set_location_assignment PIN_E14 -to fmc_ha11_n
	set_location_assignment PIN_E15 -to fmc_ha11_p
	set_location_assignment PIN_H18 -to fmc_ha13_n
	set_location_assignment PIN_G18 -to fmc_ha13_p
	set_location_assignment PIN_M4 -to fmc_ha21_n
	set_location_assignment PIN_L4 -to fmc_ha21_p

	set_location_assignment PIN_T3 -to fmc_hb01_n
	set_location_assignment PIN_U3 -to fmc_hb01_p
	set_location_assignment PIN_AE12 -to fmc_hb07_n
	set_location_assignment PIN_AE11 -to fmc_hb07_p
	set_location_assignment PIN_Y16 -to fmc_hb17_n
	set_location_assignment PIN_AA16 -to fmc_hb17_p
	set_location_assignment PIN_AC16 -to fmc_hb18_n
	set_location_assignment PIN_AC17 -to fmc_hb18_p

);



endmodule
