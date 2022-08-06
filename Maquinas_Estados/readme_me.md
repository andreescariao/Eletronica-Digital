Máquinas de Estados Finita

Questão 2
Um engenheiro está trabalhando na análise da implementação de uma máquina de estados finitos que detecta sequência(s) em Verilog. Para tanto, ele recebeu o código apresentado abaixo. Analisando o código apresentado e os pontos I, II e III levantados pelo engenheiro, marque a alternativa correta.
 
I. É uma FSM do tipo Mealy;
II. Detecta a sequência 101;
III. Detecta a sequência 001;

Resposta: Todas as alternativas.

I. Como a saída da máquina depende da entrada recebida, trata-se se uma máquina de Mealy;

II. O caminho percorrido ao receber a sequência 10 será:
x -> s3 -> s4
e, ao receber o 3° bit (1) estando no estado s4, a saída será 1.

III. O caminho percorrido ao receber a sequência 00 será:
x -> s1 -> s2 ou
x -> s2 -> s2
e, ao receber o 3° bit (1) estando no estado s2, a saída será 1.

---------------------------------------------------------------------------------------------------

