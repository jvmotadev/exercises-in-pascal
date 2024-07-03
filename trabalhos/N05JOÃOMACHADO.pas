Program N05JOAOMACHADO ;
//FEITO POR JOÃO VICTOR MOTA MACHADO
USES TARDENOITE;
TYPE
	NN=record
		NOME:string[30];
		NOTA:integer;
end;

VAR VET:ARRAY[1..50] OF NN;
		A,B,C,I,TOT,NT:integer;
		AUX:NN;
		NM,LUIZ:string[30];
		TROCA:boolean;

Begin
	textcolor(lightblue);
	LUIZ:='LUIZ SALGADO';
	write('Insira o nome => ');
	readln(NM);
	NM:=upcase(NM);
	while(NM<>'FIM') do
		begin
			textcolor(lightblue);
			LEIA('Insira a nota => ',NT);
			if (NT>=0) AND (NT<=100) then
				begin
					C:=C+1;
					VET[C].NOME:=NM;
					VET[C].NOTA:=NT;
					write('Insira o nome => ');
					readln(NM);
					NM:=upcase(NM);
				end
			else
				begin
					textcolor(lightred);
					writeln('Nota inválida! Insira um valor de 0 a 100');
				end;
		end;
		
		//ORDENAÇÃO
	TOT:=C;
	repeat
		TROCA:=true;
		TOT:=TOT-1;
		for A:=1 to TOT do
			if(VET[A].NOME>VET[A+1].NOME) then
				begin
					AUX:=VET[A];
					VET[A]:=VET[A+1];
					VET[A+1]:=AUX;
					TROCA:=FALSE;
				end;
	until TROCA;
		//FIM
	writeln('');
	
		//MOSTRA NA TELA NOMES MENORES OU IGUAIS A LUIZ SALGADO EM ORDEM ALFABETICA CRESCENTE
	for B:=1 to C do
		begin
			if VET[B].NOME<=LUIZ then
				begin
					textcolor(lightgreen);
					writeln(VET[B].NOME:25,' ',VET[B].NOTA:4);
				end;
		end;
		//MOSTRA NA TELA NOMES MAIORES QUE LUIZ SALGADO EM ORDEM ALFABETICA DECRESCENTE	
	for B:=C downto 1 do
		begin
			if VET[B].NOME>LUIZ then
				begin
					textcolor(white);
					writeln(VET[B].NOME:25,' ',VET[B].NOTA:4);
				end;
		end;  
End.