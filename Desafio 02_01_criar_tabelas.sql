/* 1 - Criar tabelas
O primeiro passo é definir a estrutura do banco de dados, criando tabelas para armazenar informações específicas. Utilizaremos SQL (Structured Query Language) para criar as tabelas. Aqui estão os dados que você pode utilizar:

Tabela "Alunos" armazenará informações sobre os estudantes, como**:**

ID do Aluno: Um identificador único para cada aluno.
Nome do Aluno: O nome completo do aluno.
Data de Nascimento: A data de nascimento do aluno.
Gênero: O gênero do aluno (masculino, feminino, outros).
Endereço: O endereço do aluno.
Telefone de Contato: O número de telefone de contato do aluno.
E-mail: O endereço de e-mail do aluno.
Tabela "Professores" conterá detalhes sobre os professores da escola**:**

ID do Professor: Um identificador único para cada professor.
Nome do Professor: O nome completo do professor.
Data de Nascimento: A data de nascimento do professor.
Gênero: O gênero do professor.
Telefone de Contato: O número de telefone de contato do professor.
E-mail: O endereço de e-mail do professor.
Tabela "Disciplinas" manterá registros das matérias oferecidas, incluindo**:**

ID da Disciplina: Um identificador único para cada disciplina.
Nome da Disciplina: O nome da disciplina.
Descrição: Uma descrição da disciplina.
Carga Horária: A carga horária da disciplina.
ID do Professor: Uma chave estrangeira que faz referência ao professor que leciona a disciplina.
Tabela "Turmas" será usada para registrar turmas específicas**:**

ID da Turma: Um identificador único para cada turma.
Nome da Turma: O nome ou código da turma.
Ano Letivo: O ano letivo da turma.
ID do Professor Orientador: Uma chave estrangeira que faz referência ao professor que orienta a turma.
Tabela "Turma_Disciplinas" armazenara os dados das associações entre turmas e disciplinas**:**

ID da Turma: Uma lista de chaves estrangeiras que fazem referência as turmas existentes.
ID das Disciplinas: Uma lista de chaves estrangeiras que fazem referência às disciplinas ministradas na turma.
OBS.: Os dois campos juntos formam a chave primaria da tabela

Tabela "Turma_Alunos" será usada para registrar os dados das associações entre turmas e alunos**:**

ID da Turma: Uma lista de chaves estrangeiras que fazem referência as turmas existentes.
ID dos Alunos: Uma lista de chaves estrangeiras que fazem referência aos alunos matriculados na turma.
OBS.: Os dois campos juntos formam a chave primaria da tabela

Tabela "Notas" guardará as notas dos alunos em diferentes disciplinas**:**

ID da Nota: Um identificador único para cada nota.
ID do Aluno: Uma chave estrangeira que faz referência ao aluno.
ID da Disciplina: Uma chave estrangeira que faz referência à disciplina.
Valor da Nota: A nota atribuída ao aluno na disciplina.
Data da Avaliação: A data em que a avaliação foi realizada.

*/


CREATE table alunos (
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR (150),
  data_nascimento_aluno DATE,
  genero_aluno TEXT,
  endereco_aluno TEXT,
  telefone_aluno VARCHAR (20),
  email_aluno VARCHAR (250)
);
  
CREATE table professores (
  id_professor INT PRIMARY KEY,
  nome_professor VARCHAR (150),
  data_nascimento_professor DATE,
  genero_professor TEXT,
  endereco_professor TEXT,
  telefone_professor VARCHAR (20),
  email_professor VARCHAR (250)
);
  
create table disciplinas (
  id_disciplina INT PRIMARY KEY,
  nome_disciplina TEXT,
  descricao_disciplina TEXT,
  carga_horaria_disciplina INT,
  id_professor INT,
  FOREIGN KEY (id_professor) REFERENCES professores (id_professor)
);
 
CREATE table turmas (
  id_turma INT PRIMARY KEY,
  nome_turma VARCHAR (250),
  ano_letivo_turma DATE,
  id_professor_orientador INT,
  FOREIGN KEY (id_professor_orientador) REFERENCES professores (id_professor)
);
    
CREATE TABLE turma_disciplinas (
  id_turma_disciplina INT,
  id_turma INT,
  id_disciplina INT,
  PRIMARY KEY (id_turma, id_disciplina),
  FOREIGN KEY (id_turma) REFERENCES turmas (id_turma),
  FOREIGN KEY (id_disciplina) REFERENCES disciplinas (id_disciplina)
);
  
create TABLE turma_alunos (
  id_turma_aluno INT,
  id_turma INT,
  id_aluno INT,
  PRIMARY KEY (id_turma, id_aluno),
  FOREIGN KEY (id_turma) REFERENCES turmas (id_turma),
  FOREIGN key (id_aluno) REFERENCES alunos (id_aluno)
);
  
CREATE table notas (
  id_nota INT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  nota FLOAT (10,3),
  data_avaliacao DATE,
  FOREIGN key (id_aluno) REFERENCES alunos (id_aluno),
  FOREIGN key (id_disciplina) REFERENCES disciplinas (id_disciplina)
);
 
 /*  
  
drop table alunos;
drop table professores;
drop table disciplinas;
drop table turmas;
drop table turma_disciplinas;
drop table turma_alunos;
drop table notas;

  */