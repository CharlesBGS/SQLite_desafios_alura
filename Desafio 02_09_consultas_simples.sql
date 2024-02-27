--3 - Realizar consultas simples

-- Com os dados inseridos nas tabelas, podemos realizar consultas simples para obter informações úteis, como:

--Consulta 1: Executar consultas para verificar se os dados foram importados corretamente em todas as tabelas.

SELECT*FROM alunos;
SELECT*FROM professores;
SELECT*FROM disciplinas;
SELECT*FROM turmas;
SELECT*FROM turma_disciplinas;
SELECT*FROM turma_alunos;
SELECT*FROM notas;

--Consulta 2: Retorne as informações de todos os alunos ordenados pelo nome.

SELECT*FROM alunos ORDER by nome_aluno;

--Consulta 3: Retornar a disciplina que possui a carga horaria maior que 40.

SELECT*FROM disciplinas WHERE carga_horaria_disciplina > 40;

--Consulta 4: Buscar as notas que são maiores que 6 e menores que 8.

SELECT*FROM notas WHERE nota > 6 and nota < 8;
