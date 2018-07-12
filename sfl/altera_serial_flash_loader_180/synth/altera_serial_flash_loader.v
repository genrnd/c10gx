// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


`timescale 1 ps / 1 ps

module altera_serial_flash_loader (
	noe_in);

	parameter
		ENABLE_QUAD_SPI_SUPPORT = 1,
		ENABLE_SHARED_ACCESS = "ON",
		ENHANCED_MODE = 1,
		INTENDED_DEVICE_FAMILY = "Arria 10",
		NCSO_WIDTH = 3;
		
	input	noe_in;

	altserial_flash_loader	altserial_flash_loader_component (
				.dclkin (),
				.scein (),
				.asmi_access_granted (),
				.asmi_access_request (),
				.sdoin (),
				.data0out (),
				.data_in (),
				.data_oe (),
				.data_out (),
				.noe (noe_in));
	defparam
		altserial_flash_loader_component.enable_quad_spi_support = ENABLE_QUAD_SPI_SUPPORT,
		altserial_flash_loader_component.enable_shared_access = ENABLE_SHARED_ACCESS,
		altserial_flash_loader_component.enhanced_mode = ENHANCED_MODE,
		altserial_flash_loader_component.intended_device_family = INTENDED_DEVICE_FAMILY,
		altserial_flash_loader_component.ncso_width = NCSO_WIDTH;


endmodule


