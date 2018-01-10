// Test BusLVDS

module buslvds(
	doutp,
	oe,
	din,
	LinkData_p,
	LinkData_n
);


input	doutp;
input	oe;
output	din;
inout	LinkData_p;
inout	LinkData_n;

wire	[0:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_1 =  ~oe;

assign	din = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;


pdo	b2v_inst2(
	.i(doutp),
	.o(SYNTHESIZED_WIRE_2),
	.obar(SYNTHESIZED_WIRE_3));


seio	b2v_inst3(
	.datain(SYNTHESIZED_WIRE_2),
	.oe(oe),
	.dataout(LinkData_p));


seio	b2v_inst4(
	.datain(SYNTHESIZED_WIRE_3),
	.oe(oe),
	.dataout(LinkData_n));


diffin	b2v_inst5(
	.datain(LinkData_p),
	.datain_b(LinkData_n),
	.dataout(SYNTHESIZED_WIRE_0));


endmodule
