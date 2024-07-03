Program N04JOAOMACHADO;
//FEITO POR JOÃO VICTOR MOTA MACHADO
USES TARDENOITE;

VAR VET: array[1..11] of integer;
		CPF: string[11];
		SOMA,RESTO,CONT,ERR,P,J,K: integer;
		
Begin
	textcolor(lightblue);
	write('Insira um número de CPF (digite onze zeros para encerrar)=> ');
	repeat
		readln(CPF);
		if CPF <> '00000000000' then
			begin
				if length(CPF) <> 11 then
					begin
						textcolor(lightred);
						writeln('');
						write('O CPF precisa ter 11 dígitos e apenas números!');
						textcolor(lightblue);
						writeln('');
						write('Insira outro número de CPF => ');
					end
				else
					begin //VALIDADOR J
						SOMA:= 0;
						for CONT:= 1 to 11 do
							val(CPF[CONT],VET[CONT],ERR);
						P:=11;
						for CONT:= 1 to 9 do
							begin
								P:=P-1;
								SOMA:=SOMA+VET[CONT]*P;
							end;
						RESTO:= SOMA MOD 11;
						if RESTO >= 2 then
							J:= 11 - RESTO
						else
							J:= 0;
						if J <> VET[10] then
							begin
								textcolor(lightred);
								writeln('CPF digitado inválido. Dígito J calculado: ', J);
								textcolor(lightblue);
								writeln('');
								write('Insira outro número de CPF (digite onze zeros para encerrar)=> ');
							end
						else
							begin //VALIDADOR K
								SOMA:= 0;
								for CONT:= 1 to 11 do
									val(CPF[CONT],VET[CONT],ERR);
								P:=12;
								for CONT:= 1 to 10 do
									begin
										P:=P-1;
									SOMA:=SOMA+VET[CONT]*P;
									end;
								RESTO:= SOMA MOD 11;
								if RESTO >= 2 then
									K:= 11 - RESTO
								else
									K:= 0;
					  		if K <> VET[11] then
					  			begin
					  				textcolor(lightred);
										writeln('CPF digitado inválido. Dígito K calculado: ', K);
										textcolor(lightblue);
										writeln('');
										write('Insira outro número de CPF (digite onze zeros para encerrar)=> ');
									end
							  else
							  	begin
							  		textcolor(lightgreen);
								  	writeln('CPF LIDO VÁLIDO!!!');
								  	writeln('');
								  	textcolor(lightblue);
										write('Insira outro número de CPF (digite onze zeros para encerrar)=> ');								  
									end; 
							end; 
					end;
			end;		
	until CPF = '00000000000';
	TERMINE;	
End.