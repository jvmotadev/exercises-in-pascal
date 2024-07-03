Program N02JOAOMACHADO;
//FEITO POR JOÃO VICTOR MOTA MACHADO
USES TARDENOITE;

VAR DIANASCE,MESNASCE,ANONASCE, 				//DATA DO NASCIMENTO
		DIAHJ,MESHJ,ANOHJ,          				//DATA DE HOJE
		IDADEDIA,IDADEMES,IDADEANO,       				//IDADE
		AUX:INTEGER;                				//VARIAVEL AUXILIAR
		VALIDADOR,ENCERRA:BOOLEAN;               //VALIDADORES
			
Begin
	VALIDADOR:=TRUE;
	ENCERRA:=FALSE;
	textcolor(lightblue);
	writeln('Esse programa calcula a sua idade!');
	textcolor(white);
	writeln('Caso deseje encerrar insira o número 0 em algum campo!');
	writeln('');
	writeln('Insira o dia, mês e ano do seu nascimento:');
	repeat
		read(DIANASCE,MESNASCE,ANONASCE);
		AUX:=DIANASCE*MESNASCE*ANONASCE;                  
		if AUX=0 then
			ENCERRA:=TRUE
		else
			begin
				VALIDADOR:=VALDATAF(DIANASCE,MESNASCE,ANONASCE);		
				if not VALIDADOR then
					begin
						writeln('');
						textcolor(lightred);
						writeln('Ocorreu um erro com a data inserida');
						writeln('');
						textcolor(white);
						writeln('Insira novamente o dia, mês e ano do seu nascimento:')
					end
			end;
	until VALIDADOR or ENCERRA;
	if not ENCERRA then
		begin
			writeln('');
			writeln('Insira o dia, mês e ano de hoje:');
			repeat
			read(DIAHJ,MESHJ,ANOHJ);
			AUX:=DIAHJ*MESHJ*ANOHJ;
			if AUX=0 then
				ENCERRA:=TRUE
			else
				begin
					VALIDADOR:=VALDATAF(DIAHJ,MESHJ,ANOHJ);		
					if not VALIDADOR then
						begin
							writeln('');
							textcolor(lightred);
							writeln('Ocorreu um erro com a data inserida');
							writeln('');
							textcolor(white);
							writeln('Insira novamente o dia, mês e ano de hoje:')
						end
				end;
			until VALIDADOR or ENCERRA;
			if not ENCERRA then
				begin
					IDADEDIA:=DIAHJ-DIANASCE;
					IDADEMES:=MESHJ-MESNASCE;
					IDADEANO:=ANOHJ-ANONASCE;
					if ANOHJ>ANONASCE then
						begin	
							if IDADEMES<0 then
								begin
									IDADEANO:=IDADEANO-1;
									IDADEMES:=IDADEMES+12
								end;
							if IDADEDIA<0 then
								begin
									if MESHJ=1 then
										AUX:=12
									else
										AUX:=MESHJ-1;
										IDADEDIA:=IDADEDIA+DMAX(AUX,ANOHJ);
										IDADEMES:=IDADEMES-1
								end;
							writeln('');
							if IDADEDIA<>0 then
								if IDADEMES=0 then
								  writeln('Sua idade é de: ',IDADEANO,' ano(s) e ',IDADEDIA,' dia(s)')
								else
									writeln('Sua idade é de: ',IDADEANO,' ano(s), ',IDADEMES,' mes(es) e ',IDADEDIA,' dia(s)');
							if IDADEDIA=0 then
								if IDADEMES=0 then
									writeln('Sua idade é de: ',IDADEANO,' ano(s)')
								else
									writeln('Sua idade é de: ',IDADEANO,' ano(s) e ',IDADEMES,' mes(es)');		 	
							writeln('');
							textcolor(lightgreen);
							writeln('Pressione enter para encerrar')
						end
					else
						begin
							writeln('');
							textcolor(lightred);
							writeln('O ano de hoje não pode ser anterior ao ano do seu nascimento');
							textcolor(lightgreen);
							writeln('Programa encerrado, pressione enter passa sair');
							readln
						end
				end    												
	  	else
	  	  writeln('');
		end
	else
		begin
			writeln('');
			textcolor(lightgreen);
			writeln('Programa encerrado, pressione enter passa sair');
			readln
		end		
End.