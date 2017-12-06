`timescale 1 ns/ 1 ps

module blvds_tb;

//input declaration
reg 	oe;
reg 	doutp;

//output declaration
wire 	din; 

//inout declaration
wire 	p;  
wire 	n;

//design instantiation
CycloneIII_blvds blvds (.din(din),.p(p),.n(n),.oe(oe),.doutp(doutp));


//bidirectional signalling
reg inp;
reg inn;
wire outp;
wire outn;

assign p = oe ? 1'bz : inp ;
assign outp = p;
assign n = oe ? 1'bz : inn ;
assign outn = n;

//input stimulus
initial
	begin

		oe = 1'b1;
		doutp = 1'b0;
		inp = 1'bx; inn = 1'bx;
		#10
		doutp =1'b1;
		#10
		oe = 1'b0;
		doutp = 1'bx;
		#5
		inp = 1'b1; inn = 1'b0;
		#10
		inp = 1'b0; inn = 1'b1;
		#10
		$stop;
		
		end
		
endmodule