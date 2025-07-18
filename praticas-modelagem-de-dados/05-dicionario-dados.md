
## Dicionários dos Relacionamentos de Entidades:

|   Entidade   | Relacionamento | Nome do Relacionamento |                      Descrição                      |
| :----------: | :------------: | :--------------------: | :-------------------------------------------------: |
|              |   Professor    |        Pertence        |                                                     |
| Departamento |     Curso      |        Controla        | Tabela para cadastro dos Departamentos da faculdade |
|              |   Disciplina   |        Gerencia        |                                                     |

| Entidade  | Relacionamento  | Nome do Relacionamento |                     Descrição                     |
| :-------: | :-------------: | :--------------------: | :-----------------------------------------------: |
| Professor |  Departamento   |        Pertence        | Tabela para cadastro dos Professores da faculdade |
|           | Prof_Disciplina |        Leciona         |                                                   |

| Entidade | Relacionamento | Nome do Relacionamento |                       Descrição                        |
| :------: | :------------: | :--------------------: | :----------------------------------------------------: |
|  Turma   |     Curso      |          Gera          | Tabela para registrar turmas em andamento e encerradas |
|          |     Aluno      |        Pertence        |                                                        |

| Entidade |  Relacionamento  | Nome do Relacionamento |                  Descrição                   |
| :------: | :--------------: | :--------------------: | :------------------------------------------: |
|          |   Departamento   |        Controla        |                                              |
|  Curso   |      Aluno       |    Está Matriculado    | Tabela para cadastro dos cursos da faculdade |
|          | Curso_Disciplina |         Possui         |                                              |
|          |      Turma       |          Gera          |                                              |

| Entidade | Relacionamento | Nome do Relacionamento |                     Descrição                     |
| :------: | :------------: | :--------------------: | :-----------------------------------------------: |
|          |     Curso      |    Está matriculado    |                                                   |
|  Aluno   |     Tumar      |        Pertence        | Tabela para cadastro das informações sobre alunos |
|          |   Disciplina   |         Cursa          |                                                   |
|          |   Historico    |       Pertence a       |                                                   |

|  Entidade  |  Relacionamento  | Nome do Relacionamento |                              Descrição                               |
| :--------: | :--------------: | :--------------------: | :------------------------------------------------------------------: |
|            |      Aluno       |         Cursa          |                                                                      |
| Disciplina |   Departamento   |        Gerencia        | Tabela para cadastro das disciplinas que compõe os cursos oferecidos |
|            | Prof_Disciplina  |       É lecioada       |                                                                      |
|            | Curso_Disciplina |        Pertence        |                                                                      |
|            |    Disc_Hist     |         Compõe         |                                                                      |

| Entidade  | Relacionamento | Nome do Relacionamento |                  Descrição                   |
| :-------: | :------------: | :--------------------: | :------------------------------------------: |
|           |     Aluno      |       Pertence a       |                                              |
| Histórico |   Disc_Hist    |       É composto       | Tabela para geração do históricos dos alunos |

| Entidade  | Relacionamento | Nome do Relacionamento |                    Descrição                    |
| :-------: | :------------: | :--------------------: | :---------------------------------------------: |
|           |   Histórico    |         Compõe         |                                                 |
| Disc_Hist |   Disciplina   |       É composto       | Tabela associativa entre Disciplina e Histórico |

|     Entidade     | Relacionamento | Nome do Relacionamento |                  Descrição                    |
| :--------------: | :------------: | :--------------------: | :------------------------------------------: |
|                  |     Curso      |         Possui                                                         |
| Curso_Disciplina |   Disciplina   |        Pertence       Tabela associativa entre Curso e Disciplina  na  |

|    Entidade     | Relacionamento | Nome do Relacionamento |                    Descrição                    |
| :-------------: | :------------: | :--------------------: | :---------------------------------------------: |
|                 |   Professor    |        Leciona         |                                                 |
| Prof_Disciplina |   Disciplina   |      É lecionada       | Tabela associativa entre Professor e Disciplina |

---

## Dicionários dos Atributos de Entidades:

### Entidade Departamento

|     Atributo      | Tipo de Dado | Tamanho  |  Restrição   | Descrição                               |
| :---------------: | :----------: | :------: | :----------: | --------------------------------------- |
| Cod_departamento  |   Inteiro    | 4 bytes  | PK, NOT NULL | Código de identificação do departamento |
| Nome_departamento |  Caractere   | 40 bytes |   NOT NULL   | Nome do departamento                    |

### Entidade Professor

|      Atributo       | Tipo de Dado | Tamanho  |  Restrição   | Descrição                                         |
| :-----------------: | :----------: | :------: | :----------: | ------------------------------------------------- |
|    Cod_professor    |   Inteiro    | 4 bytes  | PK, NOT NULL | Código de identificação do professor              |
|   Nome_professor    |  Caractere   | 40 bytes |   NOT NULL   | Nome do professor                                 |
| Sobrenome_professor |  Caractere   | 40 bytes |   NOT NULL   | Sobrenome do professor                            |
|  Cod_departamento   |   Inteiro    | 4 bytes  | FK, NOT NULL | Código de identificação do departamento           |
|       Status        |   Booleano   |  1 bit   |   NOT NULL   | Status do professor (lecionando / não lecionando) |

### Entidade Curso

|     Atributo     | Tipo de Dado | Tamanho  |  Restrição   | Descrição                                         |
| :--------------: | :----------: | :------: | :----------: | ------------------------------------------------- |
|    Cod_curso     |   Inteiro    | 4 bytes  | PK, NOT NULL | Código de identificação do curso                  |
|    Nome_curso    |  Caractere   | 40 bytes |   NOT NULL   | Nome do curso                                     |
| Cod_departamento |   Inteiro    | 4 bytes  | FK, NOT NULL | Código de identificação do departamento           |

### Entidade Turma

|  Atributo   | Tipo de Dado | Tamanho  |  Restrição   | Descrição                              |
| :---------: | :----------: | :------: | :----------: | -------------------------------------- |
|  Cod_turma  |   Inteiro    | 4 bytes  | PK, NOT NULL | Código de identificação do turma       |
|  Cod_Curso  |   Inteiro    | 4 bytes  | FK, NOT NULL | Código de identificação do curso       |
|   Período   |  Caractere   | 10 bytes |   NOT NULL   | Período da turma (manhã, tarde, noite) |
| Num_alunos  |   Inteiro    | 2 bytes  |   NOT NULL   | Número de alunos matriculados na turma |
| Data_inicio |     Data     | 4 bytes  |   NOT NULL   | Data de início da turma                |
|  Data_fim   |     Data     | 4 bytes  |   NOT NULL   | Data de fim da turma                   |

### Entidade Aluno

|          Atributo          | Tipo de Dado |    Tamanho    |  Restrição   | Descrição                        |
| :------------------------: | :----------: | :-----------: | :----------: | -------------------------------- |
|             RA             |  Caractere   |    8 bytes    | PK, NOT NULL | Código de identificação do aluno |
|         Cod_curso          |   Inteiro    |    4 bytes    | FK, NOT NULL | Código de identificação do curso |
|         Cod_turma          |   Inteiro    |    4 bytes    | FK, NOT NULL | Código de identificação da turma |
|         Nome_aluno         |  Caractere   |   25 bytes    |   NOT NULL   | Nome do aluno                    |
|      Sobrenome_aluno       |  Caractere   |   40 bytes    |   NOT NULL   | Sobrenome do aluno               |
|            Sexo            |  Caractere   |    1 byte     |   NOT NULL   | Sexo do aluno                    |
|            CPF             |  Caractere   |   40 bytes    |   NOT NULL   | CPF do aluno                     |
|          Filiação          |  Caractere   |   80 bytes    |   NOT NULL   | Nome da mãe do aluno             |
|          Telefone          |  Caractere   |   40 bytes    |   NOT NULL   | Telefones* do aluno              |
|           Status           |  Caractere   |    1 byte     |   NOT NULL   | Status da matrícula              |
|          Contato           |  Caractere   |   40 bytes    |   NOT NULL   | Formas de contato com aluno      |
| Endereço(Rua, Número, CEP) |  Caractere   | 80B, 10B, 10B |   NOT NULL   | Endereço do aluno dividido       |

### Entidade Disciplina

|     Atributo     | Tipo de Dado | Tamanho |  Restrição   | Descrição                               |
| :--------------: | :----------: | :-----: | :----------: | --------------------------------------- |
|  Cod_Disciplina  |   Inteiro    | 4 bytes | PK, NOT NULL | Código de identificação da disciplina   |
| Cod_departamento |   Inteiro    | 4 bytes | FK, NOT NULL | Código de identificação do departamento |
| Nome_disciplina  |  Caractere   |  30 B   |   NOT NULL   | Nome da disciplina                      |
|    Descrição     |  Caractere   |  200 B  |     NULL     | Descrição da disciplina                 |
|  Carga_horaria   |   Inteiro    | 4 bytes |   NOT NULL   | Quantidade de horas                     |
|    Num_alunos    |   Inteiro    | 4 bytes |   NOT NULL   | Número de alunos na disciplina          |

### Entidade Histórico

|      Atributo      | Tipo de Dado | Tamanho |  Restrição   | Descrição                                      |
| :----------------: | :----------: | :-----: | :----------: | ---------------------------------------------- |
|   Cod_Histórico    |   Inteiro    | 4 bytes | PK, NOT NULL | Código de identificação do histórico           |
|         RA         |  Caractere   | 8 bytes | FK, NOT NULL | Código de identificação do aluno               |
| Periodo_realização |   Inteiro    |   4 B   |   NOT NULL   | Duração de realização da disciplina (em meses) |


### Entidade Disc_Hist

|    Atributo    | Tipo de Dado | Tamanho |    Restrição     | Descrição                             |
| :------------: | :----------: | :-----: | :--------------: | ------------------------------------- |
| Cod_Histórico  |   Inteiro    | 4 bytes | PK, FK,NOT NULL  | Código de identificação do histórico  |
| Cod_disciplina |   Inteiro    | 4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
|      Nota      |   Decimal    | 8 bytes |     NOT NULL     | Nota da disciplina                    |
|   Frequência   |   Inteiro    | 4 bytes |     NOT NULL     | Número de faltas na disciplina        |

### Entidade Curso_Disciplina

|    Atributo    | Tipo de Dado | Tamanho |    Restrição     | Descrição                             |
| :------------: | :----------: | :-----: | :--------------: | ------------------------------------- |
|   Cod_curso    |   Inteiro    | 4 bytes | PK, FK,NOT NULL  | Código de identificação do curso      |
| Cod_disciplina |   Inteiro    | 4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |

### Entidade Prof_Disciplina

|    Atributo    | Tipo de Dado | Tamanho |    Restrição     | Descrição                             |
| :------------: | :----------: | :-----: | :--------------: | ------------------------------------- |
| Cod_professor  |   Inteiro    | 4 bytes | PK, FK,NOT NULL  | Código de identificação do professor  |
| Cod_disciplina |   Inteiro    | 4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |

### Entidade Aluno_Disciplina

|    Atributo    | Tipo de Dado | Tamanho |    Restrição     | Descrição                             |
| :------------: | :----------: | :-----: | :--------------: | ------------------------------------- |
|       RA       |  Caractere   | 8 bytes | PK, FK, NOT NULL | Código de identificação do aluno      |
| Cod_disciplina |   Inteiro    | 4 bytes | PK, FK, NOT NULL | Código de identificação da disciplina |
