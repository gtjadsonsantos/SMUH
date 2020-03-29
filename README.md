
![](https://img.shields.io/badge/Opensource-smuh-orange) 
![](https://img.shields.io/badge/Status-InDevelopment-gree)

# SMUH


<p align="center">
  <img src="imgs/logo.svg">
</p>

Aplicação para gerenciamento de salas 

## CONTEXTUALIZAÇÃO 

O cenário utilizado foi baseado na estrutura do SENAC

Uma `instituição de ensino` é composta por diferentes atores ou envolvidos e a Faculdade SENAC Florianópolis não difere de outras Universidades, pois conta com alguns colaboradores internos e clientes, a exemplo de alunos, professores, coordenadores, equipes administrativas, diretoria, equipe de TI, responsáveis pela manutenção e limpeza, entre outros.

Os `alunos`são os verdadeiros responsáveis pelas demandas da instituição de ensino e grande parte da comunidade acadêmica está separada por este importante público, que na Faculdade SENAC Florianópolis e considerada como cliente externo.
 
Os `professores` são responsáveis por abordar os conteúdos didáticos considerando a estrutura pedagógica e devem se adaptar de acordo com a estutura física disponível a cada período de aula. Estes atores, para lecionarem aos alunos das turmas, precisam dominar os assuntos propostos pelas disciplinas das diferentes unidades curriculares. Além da teoria, os professores também demandam por recursos físicos, a exemplo de espaço adequado, materiais para aprendizagem e os ambientes de interação para ampliar o aprendizado de cada discente ou turma. Neste contexto, a equipe administrativa ou a equipe de TI precisa disponibilizar as salas de aulas, os materiais didáticos, os kits de dinâmicas, os diários de classe e muitos outros recursos para uso do docente. 

Os `coordenadores de cursos` são responsáveis por planejar a estrutura do curso em conjunto com a `coordenação de núcleo`, organizar os recursos físicos necessários, operacionalizar a execução das disciplinas, distribuir o cronograma de aulas semestrais, mensal ou semanal, considerando a disponibilidade e os conhecimentos dos professores que compõem o quadro docente e as disciplinas que lecionam, para que o bom andamento dos cursos aconteçam em harmonia entre a comunidade acadêmica e também necessitando de alguns controles de atividades diárias, situações não convencionais e possíveis necessidades de correções ou ajustes com os professores ou equipes internas da instituição.

A `equipe administrativa` é responsável pela alocação de materiais, insumos para as aulas, ajustes de cronograma e adequação do calendário das aulas com os locais disponíveis na unidade, ou seja, as salas, os laboratórios e até mesmo o auditório. Nestes ambientes de ensino, as informações podem ser identificadas pelos seus números, seus tipos de carteiras ou mesas, quantidades de carteiras, mesas, micros, existência ou não de projetores, armários ou racks específicos, além de identificar o tipo de curso que poderá acontecer nestes ambientes, como curso técnico, formação inicial continuada, graduação, pós-graduação, atividade in-company, entre outros. Nestes ambiente o controle de horários e turnos de utilização, a rápida identificação de salas X cursos ou da disponibilidade de salas, tanto de manhã/tarde/noite, se torna uma das tarefas mais necessárias deste tipo de controle.

A `equipe de TI` é responsável por preparar os ambientes educacionais para uso dos professores, alunos ou coordenadores, a exemplo de laboratórios adequados, computadores em funcionamento, notebook´s de backup´s, projetores ajustados, softwares instalados e configurados, ou ainda, com as conexões entre a infraestrutura física dos equipamentos das diferentes redes em perfeito funcionamento.

A `equipe de manutenção e limpeza` é responsável por manter os ambientes utilizados em perfeitas condições de higiene e organização, adaptações de sala ou das necessidades de melhorias, correções de instalações ou substituições de equipamentos danificados, em todos os locais utilizados pelo público que utiliza as instalações da instituição de ensino.

À `direção da instituição` cabe as atividades estratégicas para identificar oportunidades, avaliar a viabilidade, recomendar novos investimentos, desenvolver novos negócios, além de dirigir, planejar, organizar e controlar as atividades das diversas áreas da Faculdade SENAC Florianópolis, fixando políticas de gestão dos recursos financeiros, administrativos, sua estruturação, racionalização e adequação dos serviços para melhor atender ao aluno que o principal cliente. 

Para que estes públicos tenham um controle mais assertivos dos cursos e das turmas que estão em andamento e para que haja controle dos recursos utilizados e diponíveis em um determinado período de tempo, seja ele diário, semanal ou mensal e ainda semestral ou anual, se faz necessário um controle de salas utilizadas, alocação dos cursos em execução, professores alocados nas disciplinas ou salas, disponibilidade de ambientes para uso ou para a oferta de novos cursos, bem como a quantidade estimada para ocupação de salas, entre outras informações.

## REQUISITOS

Considerando esta demanda específica da Faculdade SENAC Florianópolis, relaciona-se abaixo os requisitos essenciais para que seja desenvolvido um sistema para controle de distituição das salas de aulas, com seus professores. Considera-se na lista de requisitos funcionais, que para toda a indicação de `manter` tal funcionalidade", o sistema estará apto a realizar as operações de: Create, Read, Update e Delete, representados pela sigla CRUD, que significam em português as operações básicas  de criação, consulta, atualização e exclusão de dados nas respectivas tabelas de armazenamento destes dados.

### REQUISITOS FUNCIONAIS

- `RF-1:` Manter cursos - CRUD 

*exemplo*: 
- Jovem Aprendiz e Formação Inicial e Continuada 
- Livres 
- Técnicos 
- - Design de Interiores
- - Administração
- - Farmácia
- - Marketing 
- - ETC 
- Graduação
- - Gestão Comercial 
- - TGTI
- - Processos Gerenciais 
- - ADS
- - ETC 
- Pós-Graduação 
- - Títulos presenciais
- - Títulos a distância
- - MBA´s com algumas opções

Obs: Cada curso pode ter esses tipos NEB, NES, FIC, Jovem Aprendiz, etc 

- `RF-2:` Manter turmas - CRUD

- 1ª fase
- - TURMA (Matutino/Vespetino/Noturno)
- - Nome
- - Ano 
- 2ª fase
- - TURMA (Matutino/Vespetino/Noturno)
- - Nome
- - Ano 
- 3ª fase
- - TURMA (Matutino/Vespetino/Noturno)
- - Nome
- - Ano 
- 4ª fase
- - TURMA (Matutino/Vespetino/Noturno)
- - Nome
- - Ano 
- 5ª fase
- - TURMA (Matutino/Vespetino/Noturno)
- - Nome
- - Ano 

*exemplo*:

- 1ª fase ADS  
- 3ª fase PG Noturno 
- 5ª fase TGTI Noturno 
- 4 fase GC Noturno 
- Pós Lato Sensu Gerenciamento de Projetos 2020 
- Pós LS Semanal Segurança da Informação 2020 
- MBA Inovação 2019 
- Jovem Aprendiz em Serviços Administrativos 
- Aprendizagem Comercial em Vendas 
- Aprendizagem Comercial em Supermercados 
- ETC

- `RF-3:` Manter disciplinas - CRUD

- ADS 
- - Modelagem de Dados 
- - Engenharia de Requisitos ..ETC
- TGTI
- - Governança de TI 
- - Planejamento Estratégico ..ETC
- MBA 
- - Inovação 
- - Empreendedorismo 
- - Gestão de Negócios 
- - Equipes Ágeis ..ETC
  
- `RF-4:` Manter professores - CRUD

*exemplo*:

- Modelagem de Dados
- - André Ulisses
- - Bruno Rafael
- - Paulo Henrique
- Engenharia de Requisitos 
- - Paulo Lapolli
- - Flávio
- - Francisco Teston
- - Thayse 
- Governança de TI
- - Flávio
- - Adriano Melo 
- - Thayse
- - Cecília 
- Planejamento Estratégico 
- - Ronaldo Pasquini
- - Thiago Marques
- - Paulo Henrique 
- Empreendedorismo 
- - Thiago Marques
- - Fábian
- - Rafael Guimarães
  
- `RF-5:` Manter salas - CRUD

- Sala
- - Número
- - Tipo (Laboratório de Informática,Laboratório de Costura,Sala de Aula,Pedagogia)
- - Detalhes 
- - Espaço disponível

*Obs*: Conforme planilha de ensalamento 
  
- `RF-6:` Manter reservas - CRUD

- Rerserva
- - Sala 
- - Horario
- - Turno
- - Professor
- - Curso
- - Disciplina

- `RF-7:` Manter usuários - CRUD

- Usuario
- - nome
- - username
- - password
- - tipo (admin, professor, manutenção, limpeza, aluno)
- - Log de ações na aplicação
  
- `RF-8:` Manter Limpeza - CRUD

- Limpeza  
- - Status
- - Nº Sala
- - Data
- - Horário
- - Usuário que limpou a sala

- `RF-9:` Manter manutenção - CRUD

- Manutenção  
- - Status
- - Sala
- - Data
- - Horario
- - Objeto a ser arrumado
- - Usuário que arrumou o objeto 

- `RNF- 10:` Emitir notificação - CRUD

- Notificação 
- - Usuario
- - Evento
- - Descrição  
- - Sala
- - ?Turno
- - Data
- - ?Objeto


### REQUISITOS NÃO FUNCIONAIS

- `RNF-1:` O sistema deve ter uma versão para uso em navegador / web browser
- `RNF-2:` O sistema deve ter uma versão em *mobile* híbrido (Android / iOS)
- `RNF-3:` O sistema deve ter seu *backend* construído em *node*
- `RNF-4:` O sistema deve ter seu *frontend* construído em *react*
- `RNF-5:` O sistema deve ter seu aplicativo *mobile* construído em *react-native*
- `RNF-6:` O sistema deve permitir a divisão dos períodos de uso das salas
- `RNF-7:` O sistema deve controlar a capacidade ou ocupação das salas conforme o seu tipo
- `RNF-8:` O sistema deve controlar os tipos de cursos (NEB, NES, FIC, Jovem Aprendiz, etc)
- `RNF-9:` O sistema deve permitir a manutenção de registros ou status das ocorrências das salas (à equipe de manutenção e/ou limpeza)


### REGRAS DE NEGÓCIO

- `RN-1:` O sistema não deve permitir a reserva da sala, caso a mesma já esteja reservada com o mesmo dia e turno por um professor

## BANCO DE DADOS

Etapa que contém os modelos essências para `schema` do banco de dados;  

### MODELO LÓGICO

![](imgs/modelo-relacional.png)

Para visualizar o ERD instale a extesão em seu vscode [dineug](https://marketplace.visualstudio.com/items?itemName=dineug.vuerd-vscode)

### SCRIPT 

```sql

CREATE TABLE Calls
(
  CallId      INT                                   NOT NULL,
  Status      ENUM("New","In Progress","Concluded") NOT NULL,
  Datetime    Date                                  NOT NULL,
  Description TEXT                                  NOT NULL,
  Subject     VARCHAR(100)                          NOT NULL,
  UserId      INT                                   NOT NULL,
  TypeCallId  INT                                   NULL    ,
  RoomId      int                                   NOT NULL,
  PRIMARY KEY (CallId)
);

CREATE TABLE Courses
(
  CourseId   INT          NOT NULL,
  CourseName VARCHAR(100) NOT NULL,
  PRIMARY KEY (CourseId)
);

CREATE TABLE Courses_Disciplines
(
  DisciplineId INT NOT NULL,
  CourseId     INT NOT NULL
);

CREATE TABLE Disciplines
(
  DisciplineId   INT          NOT NULL,
  DisciplineName VARCHAR(100) NOT NULL,
  PRIMARY KEY (DisciplineId)
);

CREATE TABLE Disciplines_Teachers
(
  TeacherId    INT NOT NULL,
  DisciplineId INT NOT NULL
);

CREATE TABLE Notifications
(
  NotificationId INT                       NOT NULL,
  EventName      ENUM("Call","Resevation") NOT NULL,
  Message        VARCHAR(300)              NOT NULL,
  PRIMARY KEY (NotificationId)
);

CREATE TABLE Reservations
(
  ResevationId   INT                                  NOT NULL,
  ResevationDate DATETIME                             NOT NULL,
  Period         ENUM("Morning","Vespertine","Nigth") NOT NULL,
  TeacherId      INT                                  NOT NULL,
  RoomId         int                                  NOT NULL,
  TeamId         INT                                  NOT NULL,
  StatusTypeId   INT                                  NOT NULL,
  PRIMARY KEY (ResevationId)
);

CREATE TABLE Rooms
(
  RoomId       int  NOT NULL,
  NumberTables INT  NOT NULL,
  Number       INT  NOT NULL,
  TypeRoomId   INT  NOT NULL,
  Details      TEXT NULL    ,
  PRIMARY KEY (RoomId)
);

CREATE TABLE Teachers
(
  TeacherId INT          NOT NULL,
  Name      VARCHAR(100) NOT NULL,
  PRIMARY KEY (TeacherId)
);

CREATE TABLE Teams
(
  TeamId INT                                  NOT NULL,
  Period ENUM("Morning","Vespertine","Nigth") NOT NULL,
  Year   INT                                  NOT NULL,
  Name   VARCHAR(100)                         NOT NULL,
  PRIMARY KEY (TeamId)
);

CREATE TABLE TypeCall
(
  TypeCall   VARCHAR(20) NOT NULL,
  TypeCallId INT         NOT NULL,
  PRIMARY KEY (TypeCallId)
);

CREATE TABLE TypesRooms
(
  TypeName   VARCHAR(100) NOT NULL,
  TypeRoomId INT          NOT NULL,
  PRIMARY KEY (TypeRoomId)
);

CREATE TABLE TypesStatus
(
  StatusTypeId INT         NOT NULL,
  TypeName     VARCHAR(50) NOT NULL,
  PRIMARY KEY (StatusTypeId)
);

CREATE TABLE TypeUsers
(
  TypeUseId INT         NOT NULL,
  TypeName  VARCHAR(20) NOT NULL,
  PRIMARY KEY (TypeUseId)
);

CREATE TABLE Users
(
  UserId    INT          NOT NULL,
  Name      VARCHAR(100) NOT NULL,
  Username  VARCHAR(50)  NOT NULL,
  Password  VARCHAR(50)  NOT NULL,
  TypeUseId INT          NOT NULL,
  PRIMARY KEY (UserId)
);

CREATE TABLE Users_Notification
(
  UserId         INT NOT NULL,
  NotificationId INT NOT NULL
);

ALTER TABLE Calls
  ADD CONSTRAINT FK_Users_TO_Calls
    FOREIGN KEY (UserId)
    REFERENCES Users (UserId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_Teachers_TO_Reservations
    FOREIGN KEY (TeacherId)
    REFERENCES Teachers (TeacherId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_Rooms_TO_Reservations
    FOREIGN KEY (RoomId)
    REFERENCES Rooms (RoomId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_Teams_TO_Reservations
    FOREIGN KEY (TeamId)
    REFERENCES Teams (TeamId);

ALTER TABLE Users
  ADD CONSTRAINT FK_TypeUsers_TO_Users
    FOREIGN KEY (TypeUseId)
    REFERENCES TypeUsers (TypeUseId);

ALTER TABLE Calls
  ADD CONSTRAINT FK_TypeCall_TO_Calls
    FOREIGN KEY (TypeCallId)
    REFERENCES TypeCall (TypeCallId);

ALTER TABLE Calls
  ADD CONSTRAINT FK_Rooms_TO_Calls
    FOREIGN KEY (RoomId)
    REFERENCES Rooms (RoomId);

ALTER TABLE Disciplines_Teachers
  ADD CONSTRAINT FK_Teachers_TO_Disciplines_Teachers
    FOREIGN KEY (TeacherId)
    REFERENCES Teachers (TeacherId);

ALTER TABLE Disciplines_Teachers
  ADD CONSTRAINT FK_Disciplines_TO_Disciplines_Teachers
    FOREIGN KEY (DisciplineId)
    REFERENCES Disciplines (DisciplineId);

ALTER TABLE Courses_Disciplines
  ADD CONSTRAINT FK_Disciplines_TO_Courses_Disciplines
    FOREIGN KEY (DisciplineId)
    REFERENCES Disciplines (DisciplineId);

ALTER TABLE Rooms
  ADD CONSTRAINT FK_TypesRooms_TO_Rooms
    FOREIGN KEY (TypeRoomId)
    REFERENCES TypesRooms (TypeRoomId);

ALTER TABLE Reservations
  ADD CONSTRAINT FK_TypesStatus_TO_Reservations
    FOREIGN KEY (StatusTypeId)
    REFERENCES TypesStatus (StatusTypeId);

ALTER TABLE Users_Notification
  ADD CONSTRAINT FK_Users_TO_Users_Notification
    FOREIGN KEY (UserId)
    REFERENCES Users (UserId);

ALTER TABLE Users_Notification
  ADD CONSTRAINT FK_Notifications_TO_Users_Notification
    FOREIGN KEY (NotificationId)
    REFERENCES Notifications (NotificationId);

ALTER TABLE Courses_Disciplines
  ADD CONSTRAINT FK_Courses_TO_Courses_Disciplines
    FOREIGN KEY (CourseId)
    REFERENCES Courses (CourseId);
```

*Obs*: SQLLite, PostgressSQL e MYSQL 

## PADRÃO DE PROJETOS

- [MVC](encurtador.com.br/bdhtS) - MODEL'S, VIEW'S e CONTROLLERS 

## PROTOTIPOS

DEPENDE DA VALIDAÇÃO DOS OUTROS CAMPOS




## CONTRIBUIDORES 

<table>
  <tr>
    <td><img src="https://avatars3.githubusercontent.com/u/42282908?s=60&v=4" width="50"></td>
    <td><img src="https://avatars2.githubusercontent.com/u/54027728?s=60&v=4" width="50"></td>
    <td><img src="https://avatars1.githubusercontent.com/u/61851655?s=32&v=4" width="50"></td>
  </tr>
</table>
