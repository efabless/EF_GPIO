/*
	Copyright 2023 Efabless Corp.

	Author: Mohamed Shalan (mshalan@efabless.com)

	This file is auto-generated by wrapper_gen.py on 2023-10-20

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	    http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

*/


`timescale			1ns/1ns
`default_nettype	none





module EF_GPIO8_apb (
	input	wire [7:0]	io_in,
	output	wire [7:0]	io_out,
	output	wire [7:0]	io_oe,
	input	wire 		PCLK,
	input	wire 		PRESETn,
	input	wire [31:0]	PADDR,
	input	wire 		PWRITE,
	input	wire 		PSEL,
	input	wire 		PENABLE,
	input	wire [31:0]	PWDATA,
	output	wire [31:0]	PRDATA,
	output	wire 		PREADY,
	output	wire 		irq
);
	localparam[15:0] DATAI_REG_ADDR = 16'h0000;
	localparam[15:0] DATAO_REG_ADDR = 16'h0004;
	localparam[15:0] DIR_REG_ADDR = 16'h0008;
	localparam[15:0] ICR_REG_ADDR = 16'h0f00;
	localparam[15:0] RIS_REG_ADDR = 16'h0f04;
	localparam[15:0] IM_REG_ADDR = 16'h0f08;
	localparam[15:0] MIS_REG_ADDR = 16'h0f0c;

	reg	[7:0]	DATAO_REG;
	reg	[7:0]	DIR_REG;
	reg	[31:0]	RIS_REG;
	reg	[31:0]	ICR_REG;
	reg	[31:0]	IM_REG;

	wire[7:0]	bus_in;
	wire[7:0]	DATAI_REG	= bus_in;
	wire[7:0]	bus_out	= DATAO_REG[7:0];
	wire[7:0]	bus_oe	= DIR_REG[7:0];
	wire		pin0_hi;
	wire		_PIN0_HI_FLAG_	= pin0_hi;
	wire		pin1_hi;
	wire		_PIN1_HI_FLAG_	= pin1_hi;
	wire		pin2_hi;
	wire		_PIN2_HI_FLAG_	= pin2_hi;
	wire		pin3_hi;
	wire		_PIN3_HI_FLAG_	= pin3_hi;
	wire		pin4_hi;
	wire		_PIN4_HI_FLAG_	= pin4_hi;
	wire		pin5_hi;
	wire		_PIN5_HI_FLAG_	= pin5_hi;
	wire		pin6_hi;
	wire		_PIN6_HI_FLAG_	= pin6_hi;
	wire		pin7_hi;
	wire		_PIN7_HI_FLAG_	= pin7_hi;
	wire		pin0_lo;
	wire		_PIN0_LO_FLAG_	= pin0_lo;
	wire		pin1_lo;
	wire		_PIN1_LO_FLAG_	= pin1_lo;
	wire		pin2_lo;
	wire		_PIN2_LO_FLAG_	= pin2_lo;
	wire		pin3_lo;
	wire		_PIN3_LO_FLAG_	= pin3_lo;
	wire		pin4_lo;
	wire		_PIN4_LO_FLAG_	= pin4_lo;
	wire		pin5_lo;
	wire		_PIN5_LO_FLAG_	= pin5_lo;
	wire		pin6_lo;
	wire		_PIN6_LO_FLAG_	= pin6_lo;
	wire		pin7_lo;
	wire		_PIN7_LO_FLAG_	= pin7_lo;
	wire		pin0_pe;
	wire		_PIN0_PE_FLAG_	= pin0_pe;
	wire		pin1_pe;
	wire		_PIN1_PE_FLAG_	= pin1_pe;
	wire		pin2_pe;
	wire		_PIN2_PE_FLAG_	= pin2_pe;
	wire		pin3_pe;
	wire		_PIN3_PE_FLAG_	= pin3_pe;
	wire		pin4_pe;
	wire		_PIN4_PE_FLAG_	= pin4_pe;
	wire		pin5_pe;
	wire		_PIN5_PE_FLAG_	= pin5_pe;
	wire		pin6_pe;
	wire		_PIN6_PE_FLAG_	= pin6_pe;
	wire		pin7_pe;
	wire		_PIN7_PE_FLAG_	= pin7_pe;
	wire		pin0_ne;
	wire		_PIN0_NE_FLAG_	= pin0_ne;
	wire		pin1_ne;
	wire		_PIN1_NE_FLAG_	= pin1_ne;
	wire		pin2_ne;
	wire		_PIN2_NE_FLAG_	= pin2_ne;
	wire		pin3_ne;
	wire		_PIN3_NE_FLAG_	= pin3_ne;
	wire		pin4_ne;
	wire		_PIN4_NE_FLAG_	= pin4_ne;
	wire		pin5_ne;
	wire		_PIN5_NE_FLAG_	= pin5_ne;
	wire		pin6_ne;
	wire		_PIN6_NE_FLAG_	= pin6_ne;
	wire		pin7_ne;
	wire		_PIN7_NE_FLAG_	= pin7_ne;
	wire[31:0]	MIS_REG	= RIS_REG & IM_REG;
	wire		apb_valid	= PSEL & PENABLE;
	wire		apb_we	= PWRITE & apb_valid;
	wire		apb_re	= ~PWRITE & apb_valid;
	wire		_clk_	= PCLK;
	wire		_rst_	= ~PRESETn;

	EF_GPIO8 inst_to_wrap (
		.clk(_clk_),
		.rst_n(~_rst_),
		.io_in(io_in),
		.bus_in(bus_in),
		.io_out(io_out),
		.bus_out(bus_out),
		.io_oe(io_oe),
		.bus_oe(bus_oe),
		.pin0_hi(pin0_hi),
		.pin1_hi(pin1_hi),
		.pin2_hi(pin2_hi),
		.pin3_hi(pin3_hi),
		.pin4_hi(pin4_hi),
		.pin5_hi(pin5_hi),
		.pin6_hi(pin6_hi),
		.pin7_hi(pin7_hi),
		.pin0_lo(pin0_lo),
		.pin1_lo(pin1_lo),
		.pin2_lo(pin2_lo),
		.pin3_lo(pin3_lo),
		.pin4_lo(pin4_lo),
		.pin5_lo(pin5_lo),
		.pin6_lo(pin6_lo),
		.pin7_lo(pin7_lo),
		.pin0_pe(pin0_pe),
		.pin1_pe(pin1_pe),
		.pin2_pe(pin2_pe),
		.pin3_pe(pin3_pe),
		.pin4_pe(pin4_pe),
		.pin5_pe(pin5_pe),
		.pin6_pe(pin6_pe),
		.pin7_pe(pin7_pe),
		.pin0_ne(pin0_ne),
		.pin1_ne(pin1_ne),
		.pin2_ne(pin2_ne),
		.pin3_ne(pin3_ne),
		.pin4_ne(pin4_ne),
		.pin5_ne(pin5_ne),
		.pin6_ne(pin6_ne),
		.pin7_ne(pin7_ne)
	);

	always @(posedge PCLK or negedge PRESETn) if(~PRESETn) DATAO_REG <= 0; else if(apb_we & (PADDR[15:0]==DATAO_REG_ADDR)) DATAO_REG <= PWDATA[8-1:0];
	always @(posedge PCLK or negedge PRESETn) if(~PRESETn) DIR_REG <= 0; else if(apb_we & (PADDR[15:0]==DIR_REG_ADDR)) DIR_REG <= PWDATA[8-1:0];
	always @(posedge PCLK or negedge PRESETn) if(~PRESETn) IM_REG <= 0; else if(apb_we & (PADDR[15:0]==IM_REG_ADDR)) IM_REG <= PWDATA[32-1:0];

	always @(posedge PCLK or negedge PRESETn) if(~PRESETn) ICR_REG <= 32'b0; else if(apb_we & (PADDR[15:0]==ICR_REG_ADDR)) ICR_REG <= PWDATA[32-1:0]; else ICR_REG <= 32'd0;

	always @(posedge PCLK or negedge PRESETn)
		if(~PRESETn) RIS_REG <= 32'd0;
		else begin
			if(_PIN0_HI_FLAG_) RIS_REG[0] <= 1'b1; else if(ICR_REG[0]) RIS_REG[0] <= 1'b0;
			if(_PIN1_HI_FLAG_) RIS_REG[1] <= 1'b1; else if(ICR_REG[1]) RIS_REG[1] <= 1'b0;
			if(_PIN2_HI_FLAG_) RIS_REG[2] <= 1'b1; else if(ICR_REG[2]) RIS_REG[2] <= 1'b0;
			if(_PIN3_HI_FLAG_) RIS_REG[3] <= 1'b1; else if(ICR_REG[3]) RIS_REG[3] <= 1'b0;
			if(_PIN4_HI_FLAG_) RIS_REG[4] <= 1'b1; else if(ICR_REG[4]) RIS_REG[4] <= 1'b0;
			if(_PIN5_HI_FLAG_) RIS_REG[5] <= 1'b1; else if(ICR_REG[5]) RIS_REG[5] <= 1'b0;
			if(_PIN6_HI_FLAG_) RIS_REG[6] <= 1'b1; else if(ICR_REG[6]) RIS_REG[6] <= 1'b0;
			if(_PIN7_HI_FLAG_) RIS_REG[7] <= 1'b1; else if(ICR_REG[7]) RIS_REG[7] <= 1'b0;
			if(_PIN0_LO_FLAG_) RIS_REG[8] <= 1'b1; else if(ICR_REG[8]) RIS_REG[8] <= 1'b0;
			if(_PIN1_LO_FLAG_) RIS_REG[9] <= 1'b1; else if(ICR_REG[9]) RIS_REG[9] <= 1'b0;
			if(_PIN2_LO_FLAG_) RIS_REG[10] <= 1'b1; else if(ICR_REG[10]) RIS_REG[10] <= 1'b0;
			if(_PIN3_LO_FLAG_) RIS_REG[11] <= 1'b1; else if(ICR_REG[11]) RIS_REG[11] <= 1'b0;
			if(_PIN4_LO_FLAG_) RIS_REG[12] <= 1'b1; else if(ICR_REG[12]) RIS_REG[12] <= 1'b0;
			if(_PIN5_LO_FLAG_) RIS_REG[13] <= 1'b1; else if(ICR_REG[13]) RIS_REG[13] <= 1'b0;
			if(_PIN6_LO_FLAG_) RIS_REG[14] <= 1'b1; else if(ICR_REG[14]) RIS_REG[14] <= 1'b0;
			if(_PIN7_LO_FLAG_) RIS_REG[15] <= 1'b1; else if(ICR_REG[15]) RIS_REG[15] <= 1'b0;
			if(_PIN0_PE_FLAG_) RIS_REG[16] <= 1'b1; else if(ICR_REG[16]) RIS_REG[16] <= 1'b0;
			if(_PIN1_PE_FLAG_) RIS_REG[17] <= 1'b1; else if(ICR_REG[17]) RIS_REG[17] <= 1'b0;
			if(_PIN2_PE_FLAG_) RIS_REG[18] <= 1'b1; else if(ICR_REG[18]) RIS_REG[18] <= 1'b0;
			if(_PIN3_PE_FLAG_) RIS_REG[19] <= 1'b1; else if(ICR_REG[19]) RIS_REG[19] <= 1'b0;
			if(_PIN4_PE_FLAG_) RIS_REG[20] <= 1'b1; else if(ICR_REG[20]) RIS_REG[20] <= 1'b0;
			if(_PIN5_PE_FLAG_) RIS_REG[21] <= 1'b1; else if(ICR_REG[21]) RIS_REG[21] <= 1'b0;
			if(_PIN6_PE_FLAG_) RIS_REG[22] <= 1'b1; else if(ICR_REG[22]) RIS_REG[22] <= 1'b0;
			if(_PIN7_PE_FLAG_) RIS_REG[23] <= 1'b1; else if(ICR_REG[23]) RIS_REG[23] <= 1'b0;
			if(_PIN0_NE_FLAG_) RIS_REG[24] <= 1'b1; else if(ICR_REG[24]) RIS_REG[24] <= 1'b0;
			if(_PIN1_NE_FLAG_) RIS_REG[25] <= 1'b1; else if(ICR_REG[25]) RIS_REG[25] <= 1'b0;
			if(_PIN2_NE_FLAG_) RIS_REG[26] <= 1'b1; else if(ICR_REG[26]) RIS_REG[26] <= 1'b0;
			if(_PIN3_NE_FLAG_) RIS_REG[27] <= 1'b1; else if(ICR_REG[27]) RIS_REG[27] <= 1'b0;
			if(_PIN4_NE_FLAG_) RIS_REG[28] <= 1'b1; else if(ICR_REG[28]) RIS_REG[28] <= 1'b0;
			if(_PIN5_NE_FLAG_) RIS_REG[29] <= 1'b1; else if(ICR_REG[29]) RIS_REG[29] <= 1'b0;
			if(_PIN6_NE_FLAG_) RIS_REG[30] <= 1'b1; else if(ICR_REG[30]) RIS_REG[30] <= 1'b0;
			if(_PIN7_NE_FLAG_) RIS_REG[31] <= 1'b1; else if(ICR_REG[31]) RIS_REG[31] <= 1'b0;

		end

	assign irq = |MIS_REG;

	assign	PRDATA = 
			(PADDR[15:0] == DATAO_REG_ADDR) ? DATAO_REG :
			(PADDR[15:0] == DIR_REG_ADDR) ? DIR_REG :
			(PADDR[15:0] == RIS_REG_ADDR) ? RIS_REG :
			(PADDR[15:0] == ICR_REG_ADDR) ? ICR_REG :
			(PADDR[15:0] == IM_REG_ADDR) ? IM_REG :
			(PADDR[15:0] == DATAI_REG_ADDR) ? DATAI_REG :
			(PADDR[15:0] == MIS_REG_ADDR) ? MIS_REG :
			32'hDEADBEEF;


	assign PREADY = 1'b1;

endmodule
