//Синхронизатор имеет 3проводной интерфейс uWire. Есть возможность использовать любую статусную ножку как ножку для чтения данных. 
//Формат данных 32 бита данных + 5 бит адреса. Максимальная частота sclk 20 МГц.

module lmk04906 ( input 			clk_in, reset, 																	
						output reg		DATAuWire, LEuWire, CLKuWire,
						input	 			ReadDATA, 									// интерфейсные выводы,вводы
						input				start,											// от процессора
						output wire		sync_s
						);


//Тестовые сигналы

/*output[4:0]					adr_reg;	
output[26:0]				data_reg;
output						start;
//output						start_SYNC, start, start_SYNC_sh, start_avs, start_avs_p;
output						ena_syn;
output[1:0]					ena_syn_sh;
output[5:0]					cou_cs;
output[5:0]					cou_command;	
output						end_load, end_cs;
output[5:0]					cou_wait;
output						all_ena, wait_cs, end_wait;
output							mini_cs, end_mini_cs, s_mode_ex, st_ex_mode;
output[3:0]					cou_mini_cs;
output						test1, test2;
output[2:0]					end_wait_sh;	*/	

				
reg[4:0]					adr_reg;	
reg[26:0]				data_reg;
reg						ena_syn;
reg[2:0]					ena_syn_sh, end_wait_sh;
reg[5:0]					cou_cs;
reg[5:0]					cou_command;	
wire						end_load, end_cs, end_mini_cs;	
reg[5:0]					cou_wait;
reg						all_ena, wait_cs, end_wait;	
reg						mini_cs,  mini_cs_sd, s_mode_ex, st_ex_mode;
reg[3:0]					cou_mini_cs;
wire						test1, test2;						


//Программа

assign 	sync_s = 0;

// Формирование cs, sclk, data

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	ena_syn			<= 0;
	end
	else if (((start | (end_wait_sh[2] & all_ena)) & ~ena_syn) | end_cs)  begin
			ena_syn 			<= (start | end_wait_sh[2]) & ~ena_syn;
		end	
end

//задержка между cs

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	wait_cs			<= 0;
	end
	else if (((~ena_syn & ena_syn_sh[0]) & ~wait_cs)| end_wait ) begin
	wait_cs <= (~ena_syn & ena_syn_sh[0]) & ~wait_cs;
	end
end
	

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	cou_wait <= 0; 
	end
	else if (end_wait) begin
	cou_wait <= 0; 
	end
	else if (wait_cs & all_ena) begin
	cou_wait	<= cou_wait +1;
	end
end	

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	end_wait <= 0;

	end
	else if (s_mode_ex) begin
	end_wait		<= (cou_wait == 15);
	end
	else if (~s_mode_ex) begin
	end_wait		<= (cou_wait == 18);
	end
end

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	end_wait_sh <= 0;
	end
	else begin
	end_wait_sh[0] 	<= end_wait;
	end_wait_sh[1]	<= end_wait_sh[0];
	end_wait_sh[2]	<= end_wait_sh[1];
	end
end	

//Расширенный режим работы, формирование дополнительных 3 клоков

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	st_ex_mode	<= 0;
	end
	else if (s_mode_ex) begin
	st_ex_mode	<= (cou_wait == 2);
	end
end	

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	mini_cs	<= 0;
	end
	else if ((st_ex_mode & ~mini_cs)|end_mini_cs) begin
	mini_cs	<= st_ex_mode & ~mini_cs;
	end
end

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	mini_cs_sd	<= 0;
	end
	else begin
	mini_cs_sd	<= mini_cs;
	end
end	


always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	cou_mini_cs <= 0;
	end
	else if (end_mini_cs) begin
	cou_mini_cs <= 0;
	end
	else if (mini_cs) begin
	cou_mini_cs <= cou_mini_cs +1;
end
end

assign		end_mini_cs 		= (cou_mini_cs == 6);

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	ena_syn_sh		<= 0;
	end
	else begin
	ena_syn_sh[0] 		<= ena_syn;
	ena_syn_sh[1] 		<= ena_syn_sh[0];
	end
end	

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	LEuWire <= 0;
	end
	else begin 
	LEuWire  = ~((ena_syn | ena_syn_sh[1])| (mini_cs | mini_cs_sd)); //_sh[0]
end
end

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	cou_cs		<= 0;
	end
	else if (ena_syn) begin
	cou_cs		<= cou_cs +1;
	end
end

assign		end_cs 				= (cou_cs == 63);


always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	CLKuWire	<= 0;
	end
	else begin
	CLKuWire	<= cou_cs[0] | cou_mini_cs[0];
	end
end	

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	DATAuWire	<= 0;
	end
else if (~LEuWire) begin
	case (cou_cs[5:1])  
	0: DATAuWire <= data_reg[26];
	1: DATAuWire <= data_reg[25];
	2: DATAuWire <= data_reg[24];
	3: DATAuWire <= data_reg[23];
	4: DATAuWire <= data_reg[22];
	5: DATAuWire <= data_reg[21];
	6: DATAuWire <= data_reg[20];
	7: DATAuWire <= data_reg[19];
	8: DATAuWire <= data_reg[18];
	9: DATAuWire <= data_reg[17];
	10: DATAuWire <= data_reg[16];
	11: DATAuWire <= data_reg[15];
	12: DATAuWire <= data_reg[14]; 
	13: DATAuWire <= data_reg[13]; 
	14: DATAuWire <= data_reg[12];
	15: DATAuWire <= data_reg[11];
	16: DATAuWire <= data_reg[10];
	17: DATAuWire <= data_reg[9];
	18: DATAuWire <= data_reg[8];
	19: DATAuWire <= data_reg[7];
	20: DATAuWire <= data_reg[6];
	21: DATAuWire <= data_reg[5];
	22: DATAuWire <= data_reg[4];
	23: DATAuWire <= data_reg[3];
	24: DATAuWire <= data_reg[2];
	25: DATAuWire <= data_reg[1];
	26: DATAuWire <= data_reg[0];
	27: DATAuWire <= adr_reg[4];
	28: DATAuWire <= adr_reg[3];
	29: DATAuWire <= adr_reg[2];
	30: DATAuWire <= adr_reg[1];
	31: DATAuWire <= adr_reg[0];
	endcase	
		end
end	

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	cou_command		<= 0;
	end
	else if (end_load) begin
	cou_command		<= 0;
	end
	else if (end_wait & all_ena) begin
	cou_command		<= cou_command +1; 
	end
end

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	all_ena			<= 0;
	end
	else if ((start & ~all_ena)| end_load) begin
	all_ena			<= start & ~all_ena;
	end
end	

assign	end_load		=( cou_command == 26);

//Загрузка всех регистров синхронизатора. Все подробно расписано в журнале страница 162 (чтобы просмотреть полную таблицу необходимо перейти в режим черновика)

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
		data_reg  <= 0;
		end
	else begin
		case (cou_command) 
		0:	data_reg <= 'b0000_0000_0000_0010_0000_0000_000;  //регистр R0: необходимо сначало сделать Reset.
		1:	data_reg <= 'b0000_0000_0000_0000_0000_1010_000;  //регистр R0: задаем нужны параметры в частности регистры R0-R5 отвечают за делитель ClkoutX_DIV, вкл определенные выходы clk0 - изменено 80 (30 МГц) 100 (24 Мгц частота для АЦП)
		2:	data_reg <= 'b0000_0000_0000_0000_0111_1101_000;  //регистр R1: clk1 - изменено 990 (2.4 МГц) 1000 (2.4 Мгц)
		3:	data_reg <= 'b0000_0000_0000_0000_0000_0101_000;  //регистр R2: clk2 - изменено 40 (60 Мгц) 50 (48 МГц)
		4:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;  //регистр R3: clk3 - no
		5:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;  //регистр R4: clk4 - no
		6:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;  //регистр R5: clk5 - no
		7:	data_reg <= 'b0000_0001_0001_0000_0000_0000_000;  //регистр R6: тип выходных тактовых сигналов LVDS
		8:	data_reg <= 'b0000_0000_0001_0000_0000_0000_000;  //регистр R7: тип выходных тактовых сигналов LVDS
		9:	data_reg <= 'b0000_0000_0000_0000_0000_0000_000;  //регистр R8: тип выходных тактовых сигналов LVDS
		10:	data_reg <= 'b0101_0101_0101_0101_0101_0101_010;  //регистр R9: constant
		11:	data_reg <= 'b0001_0001_0101_0010_0100_0010_000;  //регистр R10: все что касается параметров для OScin+VCO: LVDS, используется OScout pin без деления частоты. Делитель VCO не используется 
		12:	data_reg <= 'b0011_0111_1111_0001_0001_0000_000;  //регистр R11: задаем режим  MODE: PLL2, Internal VCO (single PLL, 0-delay)+ параметры SYNC: синхронизация включения, управление ручное, SYNC pin определен как вход active low 
		13:	data_reg <= 'b0001_0011_0000_1100_0000_0000_011;  //регистр R12: тип LD pin (lock PLL2) + параметры holdover mode: режим отключен
		14:	data_reg <= 'b0011_1011_0000_0010_0000_0110_000;  //регистр R13: тип Holdover pin (используется в качестве Readwire), Status_clkin0,1
		15:	data_reg <= 'b0001_0010_0000_0000_0000_0000_000;  //регистр R14: тип Status_clkin1 +параметры ЦАП
		16:	data_reg <= 'b1000_0000_0000_0000_1000_0000_000;  //регистр R15: параметры ЦАП + параметры режима Holdover
		17:	data_reg <= 'b0000_0001_0101_0101_0000_0100_000;  //регистр R16: constant
		18:	data_reg <= 'b0000_0000_0000_0000_0000_0000_110;  //регистр R24: номинал С3,С4, R3, R4 для PLL2 (оставлено  по умолчанию 200 Ом 10пф)
		19:	data_reg <= 'b0000_0001_0000_0001_0000_0000_000;  //регистр R25: делитель для ЦАП (не используется) + задаем точность частоты PLL1 (не используется)
		20:	data_reg <= 'b0010_1111_1010_1000_0000_0000_000;  //регистр R26: изменено: удвоитель off, параметры для PLL2 (размер окна 40 нсек, удвоитель частоты on, точность частоты PLL2 оставлена по умолчанию CNT=8192)
		21:	data_reg <= 'b0001_0000_0000_0000_0001_1000_000;  //регистр R27: предусиление для PLL1, PLL1_R (не используется)
		22:	data_reg <= 'b0000_0000_0010_0000_0011_0000_000;  //регистр R28: изменено PLL2_R = 25,  PLL2_R (2) + PLL1_N (не используется)
		23:	data_reg <= 'b0000_0000_1000_0000_0000_0011_000;  //регистр R29: PLL2_N_CAL повтор PLL2_N
		24:	data_reg <= 'b0000_0010_0000_0000_0000_0011_000;  //регистр R30: ИЗменено PLL2_N (297) + PLL2_P(4) PLL2_N (24) + PLL2_P(2) (PLL2_P не используется в режиме с 0-delay)
		25:	data_reg <= 'b0000_0000_0001_1111_0000_0000_000;  //регистр R31: Параметры для чтения + разблокировка регистров (регистры разблокированы) 
	/*	default
		0:	data_reg <= 'b0000_0000_0000_0010_0000_0000_000;  	//регистр R0: необходимо сначало сделать Reset.
		1:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;   //регистр R0: задаем нужны параметры в частности регистры R0-R5 отвечают за делитель ClkoutX_DIV, вкл определенные выходы clk0 - 100
		2:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;  //регистр R1: clk1 - 100
		3:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;  //регистр R2: clk2 - 50
		4:	data_reg <= 'b0100_0000_0000_0000_0000_0000_001;  //регистр R3: clk3 - 1000
		5:	data_reg <= 'b0000_0000_0000_0000_0000_0011_001;  //регистр R4: clk4 - 1000
		6:	data_reg <= 'b1000_0000_0000_0000_0000_0011_001;  //регистр R5: clk5 - 20
		7:	data_reg <= 'b0000_0000_0000_0000_0000_0000_000;  //регистр R6: тип выходных тактовых сигналов LVDS
		8:	data_reg <= 'b0000_1000_0000_0000_0000_0000_000;  //регистр R7: тип выходных тактовых сигналов LVDS
		9:	data_reg <= 'b0000_0000_0000_0001_0000_0000_000;  //регистр R8: тип выходных тактовых сигналов LVDS
		10:	data_reg <= 'b0101_0101_0101_0101_0101_0101_010;  //регистр R9: constant
		11:	data_reg <= 'b0001_0001_0100_0000_0100_0010_000;  //регистр R10: все что касается параметров для OScin+VCO: LVDS, используется OScout pin без деления частоты. Делитель VCO не используется 
		12:	data_reg <= 'b0000_0101_1000_0001_0001_0000_000;  //регистр R11: задаем режим  MODE (single PLL, 0-delay)+ параметры SYNC: синхронизация включения, управление ручное, SYNC pin определен как вход active low 
		13:	data_reg <= 'b0001_1011_0000_1100_0000_0001_101;  //регистр R12: тип LD pin (lock PLL2) + параметры holdover mode: режим отключен
		14:	data_reg <= 'b0011_1011_0000_0010_0000_0110_111;  //регистр R13: тип Holdover pin (используется в качестве Readwire), Status_clkin0,1
		15:	data_reg <= 'b0001_0010_0000_0000_0000_0000_000;  //регистр R14: тип Status_clkin1 +параметры ЦАП
		16:	data_reg <= 'b1000_0000_0000_0000_1000_0000_000;  //регистр R15: параметры ЦАП + параметры режима Holdover
		17:	data_reg <= 'b0000_0001_0101_0101_0000_0100_000;  //регистр R16: constant
		18:	data_reg <= 'b0000_0000_0000_0000_0000_0000_110;  //регистр R24: номинал С3,С4, R3, R4 для PLL2 (оставлено  по умолчанию 200 Ом 10пф)
		19:	data_reg <= 'b0000_0001_0000_0001_0000_0000_000;  //регистр R25: делитель для ЦАП (не используется) + задаем точность частоты PLL1 (не используется)
		20:	data_reg <= 'b0000_1111_1010_1000_0000_0000_000;  //регистр R26: параметры для PLL2 (размер окна 40 нсек, удвоитель частоты off, точность частоты PLL2 оставлена по умолчанию CNT=8192)
		21:	data_reg <= 'b0001_0000_0000_0000_0001_1000_000;  //регистр R27: предусиление для PLL1, PLL1_R (не используется)
		22:	data_reg <= 'b0000_0000_0100_0000_0011_0000_000;  //регистр R28: PLL2_R (100) + PLL1_N (не используется)
		23:	data_reg <= 'b0000_0100_1000_0000_0000_0110_000;  //регистр R29: PLL2_N_CAL (3)
		24:	data_reg <= 'b0000_0010_0000_0000_0000_0110_000;  //регистр R30: PLL2_N (3) + PLL2_P (PLL2_P не используется в режиме с 0-delay)
		25:	data_reg <= 'b0000_0000_0001_1111_0000_0000_000;  //регистр R31: Параметры для чтения + разблокировка регистров (регистры разблокированы) */
		
	/*	0:	data_reg <= 'b0000_0000_0000_0010_0000_0000_000;  		//регистр R0: необходимо сначало сделать Reset.
		1:	data_reg <= 'b0000_0000_0000_0000_0000_1100_100;   //регистр R0: задаем нужны параметры в частности регистры R0-R5 отвечают за делитель ClkoutX_DIV, вкл определенные выходы clk0 - 100
		2:	data_reg <= 'b0000_0000_0000_0000_0000_1100_100;  //регистр R1: clk1 - 100
		3:	data_reg <= 'b0000_0000_0000_0000_0000_0110_010;  //регистр R2: clk2 - 50
		4:	data_reg <= 'b0000_0000_0000_0000_0111_1101_000;  //регистр R3: clk3 - 1000
		5:	data_reg <= 'b0000_0000_0000_0000_0111_1101_000;  //регистр R4: clk4 - 1000
		6:	data_reg <= 'b0000_0000_0000_0000_0000_0010_100;  //регистр R5: clk5 - 20
		7:	data_reg <= 'b0000_0001_0001_0000_0000_0000_000;  //регистр R6: тип выходных тактовых сигналов LVDS
		8:	data_reg <= 'b0000_0001_0001_0000_0000_0000_000;  //регистр R7: тип выходных тактовых сигналов LVDS
		9:	data_reg <= 'b0000_0001_0000_0001_0000_0000_000;  //регистр R8: тип выходных тактовых сигналов LVDS
		10:	data_reg <= 'b0101_0101_0101_0101_0101_0101_010;  //регистр R9: constant
		11:	data_reg <= 'b0001_0001_0100_0000_0100_0000_000;  //регистр R10: все что касается параметров для OScin+VCO: LVDS, используется OScout pin без деления частоты. Делитель VCO не используется 
		12:	data_reg <= 'b0100_0111_1111_0001_0000_0000_000;  //регистр R11: задаем режим  MODE (single PLL, 0-delay)+ параметры SYNC: синхронизация включения, управление ручное, SYNC pin определен как вход active low 
		13:	data_reg <= 'b0001_0011_0000_1100_0000_0000_011;  //регистр R12: тип LD pin (lock PLL2) + параметры holdover mode: режим отключен
		14:	data_reg <= 'b0011_1011_0000_0011_0000_0000_111;  //регистр R13: тип Holdover pin (используется в качестве Readwire), Status_clkin0,1
		15:	data_reg <= 'b0001_0011_0000_0000_0000_0000_000;  //регистр R14: тип Status_clkin1 +параметры ЦАП
		16:	data_reg <= 'b1000_0000_0000_0000_1000_0000_000;  //регистр R15: параметры ЦАП + параметры режима Holdover
		17:	data_reg <= 'b0000_0001_0101_0101_0000_0100_000;  //регистр R16: constant
		18:	data_reg <= 'b0000_0000_0000_0000_0000_0000_110;  //регистр R24: номинал С3,С4, R3, R4 для PLL2 (оставлено  по умолчанию 200 Ом 10пф)
		19:	data_reg <= 'b0000_0000_0100_0001_0000_0000_000;  //регистр R25: делитель для ЦАП (не используется) + задаем точность частоты PLL1 (не используется)
		20:	data_reg <= 'b1000_1111_1010_1000_0000_0000_000;  //регистр R26: параметры для PLL2 (размер окна 40 нсек, удвоитель частоты off, точность частоты PLL2 оставлена по умолчанию CNT=8192)
		21:	data_reg <= 'b0001_0000_0000_0000_0000_0000_011;  //регистр R27: предусиление для PLL1, PLL1_R (не используется)
		22:	data_reg <= 'b0000_0110_0100_0000_0000_0000_010;  //регистр R28: PLL2_R (100) + PLL1_N (не используется)
		23:	data_reg <= 'b0000_0001_1000_0000_0000_0000_011;  //регистр R29: PLL2_N_CAL (3)
		24:	data_reg <= 'b0000_0001_0000_0000_0000_0000_011;  //регистр R30: PLL2_N (3) + PLL2_P (PLL2_P не используется в режиме с 0-delay)
		25:	data_reg <= 'b0000_0000_0000_1111_1000_0000_000;  //регистр R31: Параметры для чтения + разблокировка регистров (регистры разблокированы) */
	endcase
	end
end

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
		adr_reg  <= 0;
		end
	else begin
		case (cou_command) 
		0:	adr_reg <= 'b00000;  //регистр R0: 
		1:	adr_reg <= 'b00000;  //регистр R0: 
		2:	adr_reg <= 'b00001;  //регистр R1: 
		3:	adr_reg <= 'b00010;  //регистр R2: 
		4:	adr_reg <= 'b00011;  //регистр R3: 
		5:	adr_reg <= 'b00100;  //регистр R4: 
		6:	adr_reg <= 'b00101;  //регистр R5: 
		7:	adr_reg <= 'b00110;  //регистр R6: 
		8:	adr_reg <= 'b00111;  //регистр R7: 
		9:	adr_reg <= 'b01000;  //регистр R8: 
		10:	adr_reg <= 'b01001;  //регистр R9: 
		11:	adr_reg <= 'b01010;  //регистр R10: 
		12:	adr_reg <= 'b01011;  //регистр R11: 
		13:	adr_reg <= 'b01100;  //регистр R12: 
		14:	adr_reg <= 'b01101;  //регистр R13: 
		15:	adr_reg <= 'b01110;  //регистр R14: 
		16:	adr_reg <= 'b01111;  //регистр R15: 
		17:	adr_reg <= 'b10000;  //регистр R16: 
		18:	adr_reg <= 'b11000;  //регистр R24: 
		19:	adr_reg <= 'b11001;  //регистр R25: 
		20:	adr_reg <= 'b11010;  //регистр R26: 
		21:	adr_reg <= 'b11011;  //регистр R27: 
		22:	adr_reg <= 'b11100;  //регистр R28: 
		23:	adr_reg <= 'b11101;  //регистр R29: 
		24:	adr_reg <= 'b11110;  //регистр R30:
		25:	adr_reg <= 'b11111;  //регистр R31:
	endcase
	end
end

always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	s_mode_ex		<= 0;
	end
	else begin			//if ((adr_reg == 0)|(adr_reg == 1)|(adr_reg == 2)|(adr_reg == 3)|(adr_reg == 4)|(adr_reg == 5)) begin
		s_mode_ex <= ((adr_reg == 0)|(adr_reg == 1)|(adr_reg == 2)|(adr_reg == 3)|(adr_reg == 4)|(adr_reg == 5)) & ((data_reg[10:0]>25)| (data_reg[22:13]>12));
	end
end		
assign	test1	= (data_reg[10:0]>25);
assign	test2	= (data_reg[22:13]>12);		

/*always @(posedge clk_in or negedge reset ) begin
	if (~reset) begin
	ex_mode		<= 0;
	end
	else if ((s_mode_ex & ~ex_mode)| end_mini_cs) begin
	ex_mode 	<= s_mode_ex & ~ex_mode;
	end
end	*/
	

endmodule



