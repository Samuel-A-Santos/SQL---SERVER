Todas as vezes que trabalhamos com joins, estamos trabalhando com dois lados, left e right, direita e esquerda,
ex: Join A seleciona a esquerda, Join B a direita ex da tabela:
        esquerda        direita
          A             B
        id nome         id nome
        1 Robo          1 Espada
        2 Macaco        2 Robo
        3 Samurai       3 Mario
        4 Monitor       4 Samurai

Primeiro tipo de JOIN é o INNER JOIN, retorna apenas os resultados que são iguais
exemplo da tabela acima:
SELECT * FROM tabelaA(esquerda)
INNER JOIN tabelaB(direita)
ON tabelaA.nome = TabelaB.nome

O RESULTADO SERIA:
id      nome       id        nome 
1       Robo        2         Robo
3       Samurai     4         Samurai

FULL OUTER JOIN = Retorna um conjunto de todos os registros correspondentes da tabelaA e B e se não houver valores correspondentes ele preencherar com NULL
Exemplo:
SELECT * FROM tabelaA
FULL OUTER JOIN TabelaB
ON tabelaA.nome = TabelaB.nome

id          nome            id          nome
1           Robo            2           Robo
2           Macaco          NULL        NULL
3           Samurai         4           Samurai
4           Monitor         NULL        NULL
NULL        NULL            1           Espada
NULL        NULL            3           Mario

Ele retorna tudo que existe nas duas tabelas, colocando NULL em casos que a tabelaA ou tabelaB n tenha um dos itens

LEFT OUTER JOIN = Retorna todos os registros da tabelaA e alem disso, os registros correspondentes (quando disponiveis) na TabelaB.Se nao houver registros correspondentes ele simplesmente vai preencher com NULL.
Resultado seria:
id              nome            id          nome
1               Robo            2           Robo
2               Macaco          NULL        NULL
3               Samurai         4           Samurai
4               Monitor         NULL        NULL
Então ele pega toda a tabela da ESQUERDA que no caso é a tabelaA retorna os resultados dela, e a tabela da DIREITA que é a tabelaB ele retorna apenas os que são duplicados com a tabelaA caso contrário retorna NULL.

O LEFT OUTER JOIN é o mesmo que : LEFT JOIN