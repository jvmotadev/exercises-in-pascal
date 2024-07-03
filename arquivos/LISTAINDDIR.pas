Program LISTAINDDIR ;
//LUIZ PROFE
//ESTE PROGRAMA LISTA O CONTEUDO DOS REGISTROS DO ARQUIVO CAND.IND OU CAND.DIR SEQUENCIALMENTE (ORDEM DE GRAVACAO)
//
USES TARDENOITE;

CONST CARGOS:ARRAY [1..12] OF STRING[22]=
('ENGANADOR DE CHEFE    ','ENROLADOR DE TRABALHO ','PENSADOR              ','ANALISTA DE SISTEMAS  ',
 'DEGUSTADOR DE CERVEJA ','TECNICO EM REDES      ','CONTADOR DE ESTORIAS  ','SAI DA AULA ANTES     ',
 'ACOUGUEIRO LIMPINHO   ','SEGURANCA DE BANHEIRO ','GESTOR DE BORBOLETAS  ','AGENTE LEVA E TRAZ    ' );

VAR ARQ : FILE OF REGIS;
    REG:REGIS;
    A,B,E,IND,CONTLIN,ANTERIOR,OPC:INTEGER;
    TOTCAR:ARRAY[1..12] OF INTEGER;
BEGIN
 LEIA('ENTRE COM 1 PARA CAND.DIR OU 2 PARA CAND.IND=>',OPC);
 IF(OPC=1)THEN
  ASSIGN(ARQ,'CAND.DIR')
 ELSE
  ASSIGN(ARQ,'CAND.IND'); 
 RESET(ARQ);
	WHILE NOT EOF(ARQ) DO //PARA LER DO PRIMEIRO AO ULTIMO
	 BEGIN
	  READ(ARQ,REG);
	  E:=E+1;
	  IF(REG.CAR>0)THEN
	   TOTCAR[REG.CAR]:=TOTCAR[REG.CAR]+1;//CONTA NUMERO DE INSCRITOS POR CARGO
//ANTES DE MOSTRAR A LINHA COM AS INFORMAÇOES DO REGISTRO VERIFICA AS CONDICOES PARA IMPRESSAO DO CABECALHO
	  IF(CONTLIN MOD 25=0)  THEN
//IMPRIME O CABECALHO SE: CONTADOR DE LINHAS = 25 
     BEGIN
	    IF(E>1)THEN
			 BEGIN
			  READLN;
	      CLRSCR;
	     END;
	    WRITELN;
      write('  ORD  NUM N O M E                             ===C P F=== NASCIMENTO CS  N1');
      WRITELN('  N2  N3  N4  N5  N6   SO   CG  CC CV FA');
      CONTLIN:=0;
	   END;
//FIM DA IMPRESSAO DO CABECALHO          
//LINHA DETALHE
		WRITE(E:5,REG.NUM:5,' ',REG.NOME,' ',REG.CPF,' ',REG.DATA.DIA,'/',REG.DATA.MES,'/',REG.DATA.ANO,REG.CAR:3);
		FOR A:=1 TO 6 DO
		 WRITE(REG.NOTAS[A]:4);
		WRITELN(REG.SOM:5,REG.CLG:5,REG.CLC:4,REG.CCL:3,REG.FALTA:3);
//FIM DA LINHA DETALHE
		CONTLIN:=CONTLIN+1;
	 END;
	CLOSE(ARQ);
	WRITELN;
	WRITELN;
	WRITELN('TOTAL DE INSCRITOS POR CARGO');
	FOR A:=1 TO 12 DO
	 WRITELN(A:3,' -- ',CARGOS[A],' -->',TOTCAR[A]:4);
	writeln('TOTAL DE REGISTROS LIDOS',E:5);
	TERMINE;	 
End.