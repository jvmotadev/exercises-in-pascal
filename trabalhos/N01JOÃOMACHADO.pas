Program N01JOAOVICTOR ;
//FEITO POR JO�O VICTOR MOTA MACHADO
var num, divi, aux: integer;

Begin
	//ENTRADA DO USU�RIO
	write('Digite um n�mero(0 para encerrar): ');
	read(num);
	//ATRIBUI O VALOR -1 � VARI�VEL AUXILIAR 
	aux:=-1;
	//COMANDO DE REPETI��O ENQUANTO A ENTRADA FOR DIFERENTE DE 0 FAZ 
	while num <> 0 do
		begin
			writeln('N�mero lido: ', num);
			writeln('Divisores: ');
			//TRANSFORMA ENTRADA NEGATIVA (se for o caso) EM POSITIVA (na vari�vel auxiliar)
			if num < 0 then
				begin
					num:=num*aux
				end;
			//CALCULA OS DIVISORES COME�ANDO DO 1 AT� O N�MERO DO VALOR DA ENTRADA		
			for divi:=1 to num do
				begin
					//SE O RESTO DO N�MERO INSERIDO FOR 0, ESCREVE O DIVISOR NA TELA (valor positivo e negativo) 
					if (num mod divi)=0 then
						writeln(divi, ' e ', divi*aux)	
				end;
			writeln;
			//SOLICITA NOVAMENTE A ENTRADA DO USU�RIO
	    write('Digite um n�mero novamente(0 para encerrar): ');
	  	read(num);
		end;
		writeln;
		writeln('PROGRAMA ENCERRADO')
End.