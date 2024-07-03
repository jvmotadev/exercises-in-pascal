Program N01JOAOVICTOR ;
//FEITO POR JOÃO VICTOR MOTA MACHADO
var num, divi, aux: integer;

Begin
	//ENTRADA DO USUÁRIO
	write('Digite um número(0 para encerrar): ');
	read(num);
	//ATRIBUI O VALOR -1 À VARIÁVEL AUXILIAR 
	aux:=-1;
	//COMANDO DE REPETIÇÃO ENQUANTO A ENTRADA FOR DIFERENTE DE 0 FAZ 
	while num <> 0 do
		begin
			writeln('Número lido: ', num);
			writeln('Divisores: ');
			//TRANSFORMA ENTRADA NEGATIVA (se for o caso) EM POSITIVA (na variável auxiliar)
			if num < 0 then
				begin
					num:=num*aux
				end;
			//CALCULA OS DIVISORES COMEÇANDO DO 1 ATÉ O NÚMERO DO VALOR DA ENTRADA		
			for divi:=1 to num do
				begin
					//SE O RESTO DO NÚMERO INSERIDO FOR 0, ESCREVE O DIVISOR NA TELA (valor positivo e negativo) 
					if (num mod divi)=0 then
						writeln(divi, ' e ', divi*aux)	
				end;
			writeln;
			//SOLICITA NOVAMENTE A ENTRADA DO USUÁRIO
	    write('Digite um número novamente(0 para encerrar): ');
	  	read(num);
		end;
		writeln;
		writeln('PROGRAMA ENCERRADO')
End.