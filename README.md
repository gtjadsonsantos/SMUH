# SENAC-PAINEL

Aplicação para gerenciamento de salas 

## HISTÓRIA 

Um empreendimento do SENAC é composto por alguns colaboradores, sendo eles ( professores, coordenadores, diretores, equipe de ti, pessoal da limpeza e entre outros ). 

Os `professores` são responsáveis por repassar o conteúdo didático no qual foi designado a passar. O mesmo para conseguir dar uma aula, é necessário reservar um sala informando as seguintes informações (nº sala, turno(manhã/tarde/noite)) se a sala estiver disponível, caso não, o mesmo deverá tentar outra opção.

Os `Coordenadores` são responsáveis por planejar e organizar, em conjunto com a coordenação geral e com os professores supervisores, os trabalhos e estudos a serem realizados pelos residentes docentes e divulgá-los aos residentes docentes de sua área, além de acompanhar e controlar as atividades de cada residente em sua escola de origem.

Os `Diretóres` são responsáveis por dirigir, planejar, organizar e controlar as atividades de diversas áreas do SENAC, fixando políticas de gestão dos recursos financeiros, administrativos, estruturação, racionalização, e adequação dos serviços diversos. Desenvolve planejamento estratégico, identifica oportunidades, avalia a viabilidade e faz recomendações sobre novos investimentos ou desenvolvimento de novos negócios.

A `Equipe de TI` é responsável por manter os recursos de ti(computadores, notebook, projetores, cabos, sistemas, aplicativos) em funcionamento e disponíveis para os colaboradores junto aos docentes conseguirem utilizar esses recursos.

O pessoal da `Limpeza` são responsáveis por manter os locais em geral do SENAC limpos e organizados.


## REQUISITOS

Etapa que contém os  requisitos essências para o sistema 

### REQUISITOS FUNCIONAIS

- `RF-1:` Manter a salas no sistemas - CRUD
- `RF-2:` Manter usuários do sistema - CRUD 
- `RF-3:` Manter a reserva de salas - CRUD
- `RF-4:` Manter informação de manutenção - CRUD   
- `RF-5:` Manter cursos - CRUD
- `RF-6:` Manter turmas - CRUD
- `RF-7:` Manter disciplinas - CRUD
- `RF-8:` Manter professores - CRUD

### REQUISITOS NÃO FUNCIONAIS

- `RNF-1:` O sistema deve ter uma vesão no browser
- `RNF-2:` O sistema deve ter uma versão mobile
- `RNF-3:` O sistema deve ter seu backend construído em *node*
- `RNF-4:` O sistema deve ter seu frontend construído em *react*
- `RNF-5:` O sistema deve ter seu aplicativo mobile construído em *react-native*
- `RNF-6:` O sistema deve deve emitir uma notificação quando houver um reserva de sala para todos os usuários logados, essa notificação deve conter (nome do professor, sala, turno, data)
- `RNF-7:` O sistema deve permitir o fracionamento dos períodos de uso das salas
- `RNF-8:` O sistema deve ter o controle de capacidade ou ocupação das salas conforme o seu tipo
- `RNF-9:` O sistema deve controlar os tipos de cursos (NEB, NES, FIC, Jovem Aprendiz, etc)
- `RNF-10:`O sistema deve permitir o controle de ocorrências das salas, para manutenção e/ou limpeza

### REGRAS DE NEGÓCIO

- `RN-1:` O sistema não deve permitir a reserva da sala, caso a mesma já esteja reservada com o mesmo dia e turno por um professor


## BANCO DE DADOS

Etapa que contém os modelos essências para `schema` do banco de dados;  

### MODELO LÓGICO

![](imgs/modelo-relacional.png)

### SCRIPT 

```sql
CREATE TABLE `users` (
  `userid` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `firtname` varchar(30),
  `lastname` varchar(30),
  `age` int,
  `profile_image` varchar(20),
  `typeid` int,
  `reservationid` int,
   FOREIGN KEY (`typeid`) REFERENCES `types` (`typeid`),
   FOREIGN KEY (`reservationid`) REFERENCES `reservations` (`reservationid`),
);

CREATE TABLE `types` (
  `typeid` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(15)
);

CREATE TABLE `halls` (
  `hallid` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `number_hall` int NOT NULL,
  `floorid` int NOT NULL,
  `maintenanceid` int,
   FOREIGN KEY (`maintenanceid`) REFERENCES `maintenances` (`maintenanceid`),
   FOREIGN KEY (`hallid`) REFERENCES `floors` (`hallid`)
);

CREATE TABLE `floors` (
  `floorid` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `number_floor` int NOT NULL,
  `hallid` int
);

CREATE TABLE `reservations` (
  `reservationid` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `date_time` timestamp,
  `period` ENUM ('morning', 'afternoon', 'night')
);

CREATE TABLE `maintenances` (
  `maintenanceid` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `status` ENUM ('new', 'in_progress', 'waiting', 'concluded'),
  `created_ed` timestamp,
  `updated_ed` timestamp
);

```

*Obs*: SQLLite, PostgressSQL e MYSQL 

## PADRÃO DE PROJETOS

- [MVC](encurtador.com.br/bdhtS) - MODEL'S, VIEW'S e CONTROLLERS 

## PROTOTIPOS

DEPENDE DA VALIDAÇÃO DOS OUTROS CAMPOS
