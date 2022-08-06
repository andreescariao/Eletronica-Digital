Máquinas de Estados Finita

Questão 2
Um engenheiro está trabalhando na análise da implementação de uma máquina de estados finitos que detecta sequência(s) em Verilog. Para tanto, ele recebeu o código apresentado abaixo. Analisando o código apresentado e os pontos I, II e III levantados pelo engenheiro, marque a alternativa correta.
 
I. É uma FSM do tipo Mealy;
II. Detecta a sequência 101;
III. Detecta a sequência 001;

Resposta: Todas as alternativas são verdadeiras.

I. Como a saída da máquina depende da entrada recebida, trata-se se uma máquina de Mealy;

II. O caminho percorrido ao receber a sequência 10 será:
x -> s3 -> s4
e, ao receber o 3° bit (1) estando no estado s4, a saída será 1.

III. O caminho percorrido ao receber a sequência 00 será:
x -> s1 -> s2 ou
x -> s2 -> s2
e, ao receber o 3° bit (1) estando no estado s2, a saída será 1.

---------------------------------------------------------------------------------------------------

Questão 3
Um engenheiro está trabalhando na análise da implementação de uma máquina de estados finitos que detecta sequência(s) em Verilog. Para tanto, ele recebeu o código apresentado abaixo. Analisando o código apresentado e os pontos I, II e III levantados pelo engenheiro, marque a alternativa correta.
 
I. Trata-se de uma FSM do tipo Moore;
II. Identifica a sequência binária 110;
III. Identifica a sequência binária 001;

Resposta: I e III verdadeiras.

I. Como a saída da máquina não depende da entrada recebida, trata-se se uma máquina de Moore;

II. O caminho percorrido ao receber a sequência 110 será:
x -> s0 -> s0 -> s1 ou
x -> s3 -> s0 -> s1
e a saída será 0 sempre que o estado atual for s1.

III. O caminho percorrido ao receber a sequência 001 será:
x -> s1 -> s2 -> s3 ou
x -> s2 -> s2 -> s3
e a saída será 1 sempre que o estado atual for s3.

---------------------------------------------------------------------------------------------------

Questão 4
Um engenheiro está trabalhando na análise da implementação de uma máquina de estados finitos que detecta sequência(s) em Verilog. Para tanto, ele recebeu o código apresentado abaixo. Analisando o código apresentado e os pontos I, II e III levantados pelo engenheiro, marque a alternativa correta.
 
I. Trata-se de uma FSM do tipo Mealy;
II. Identifica a sequência binária 111;
III. Identifica a sequência binária 011;

Resposta: Nenhuma alternativa é veradeira.

I. Como a saída da máquina não depende da entrada recebida, trata-se se uma máquina de Moore;

II. O caminho percorrido ao receber a sequência 111 será, normalmente:
x -> s1 -> s1 -> s1
e a saída será 0 sempre que o estado atual for s1.

III. O caminho percorrido ao receber a sequência 011 será, normalmente:
x -> s4 -> s5 -> s1
e a saída será 0 sempre que o estado atual for s1.

Para a máquina detectar a sequência, é necessário que a última saída da sequência seja 1.

---------------------------------------------------------------------------------------------------

Questão 5
Um engenheiro está trabalhando na análise da implementação de uma máquina de estados finitos que detecta sequência(s) em Verilog. Para tanto, ele recebeu o código apresentado abaixo. Analisando o código apresentado e os pontos I, II e III levantados pelo engenheiro, marque a alternativa correta.
 
I. É uma FSM do tipo Moore;
II. Detecta a sequência 001;
III. Detecta a sequência 110;

Resposta: Apenas a III é verdadeira. 

I. Como a saída da máquina depende da entrada recebida, trata-se se uma máquina de Mealy;

II. O caminho percorrido ao receber a sequência 00 será:
x -> s0 -> s0
e, ao receber o 3° bit (1) estando no estado s0, a saída será 0.

III. O caminho percorrido ao receber a sequência 11 será:
x -> s1 -> s2 ou
x -> s2 -> s2
e, ao receber o 3° bit (0) estando no estado s2, a saída será 1.

---------------------------------------------------------------------------------------------------
