--Povoando tabela 'turmas'

INSERT INTO turmas (
  id_turma,
  nome_turma,
  ano_letivo_turma,
  id_professor_orientador)
VALUES
  (1, 'Turma A', '2023-01-01', 1),
  (2, 'Turma B', '2023-01-01', 2),
  (3, 'Turma C', '2023-01-01', 3),
  (4, 'Turma D', '2023-01-01', 4),
  (5, 'Turma E', '2023-01-01', 5);


SELECT*FROM turmas;