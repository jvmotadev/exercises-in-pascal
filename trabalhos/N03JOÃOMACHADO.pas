Program N03JOAOMACHADO;
//FEITO POR JO�O VICTOR MOTA MACHADO
USES TARDENOITE;

VAR MESES: array[1..12] of string = ('Janeiro','Fevereiro','Mar�o','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
DIA,MES,ANO,CONTINUA: integer;
	
Begin
	textcolor(lightblue);
	writeln('Esse programa l� e retorna a data inserida!');
	repeat
		repeat
			writeln('');
			textcolor(white);
			LEIA('Dia => ',DIA);
			LEIA('M�s => ',MES);
			LEIA('Ano => ',ANO);
		until VALDATA(DIA,MES,ANO);
		writeln('');
		textcolor(white);	
		writeln('Curitiba, ',DIA,' de ',MESES[MES],' de ', ANO);
		writeln('');
		textcolor(lightblue);
		writeln('Digite 1 para continuar ou qualquer outro n�mero para encerrar');
		textcolor(white);
		writeln('');	
		LEIA('=> ',CONTINUA);
		clrscr;
	until CONTINUA <> 1;
	clrscr;
	textcolor(lightgreen);	
	writeln('Programa encerrado!');
End.