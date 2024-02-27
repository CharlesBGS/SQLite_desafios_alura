--Povoando tabela 'turma_disciplinas'

INSERT INTO turma_disciplinas (
  id_turma_disciplina,
  id_turma,
  id_disciplina)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5),
  (6, 1, 3),
  (7, 2, 1),
  (8, 3, 2);


SELECT*FROM turma_disciplinas;