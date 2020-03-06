# SENAC-PAINEL

Apicação para gerenciamento de salas 

## HISTÓRIA 

Um empreendimento do SENAC é composto por alguns colaboradores, sendo eles ( professores, coordenadores, diretores, equipe de ti, pessoal da limpeza e entre outros ). 

Os `professores` são responsáveis por repassar o conteúdo didático no qual foi designado a passar. O mesmo para conseguir dar uma aula, é necessário reservar um sala informando as seguintes informação (nº sala, turno(manhã/tarde/noite)) se a sala estiver disponível, caso não, o mesmo deverá tentar outra opção.

Os `Coordenadores` são responsáveis por planejar e organizar, em conjunto com a coordenação geral e com os professores supervisores, os trabalhos e estudos a serem realizados pelos residentes docentes e divulgá-los aos residentes docentes de sua área, além de acompanhar e controlar as atividades de cada residente em sua escola de origem.

Os `Diretóres` são responsáveis por dirigir, planejar, organizar e controlar as atividades de diversas áreas do SENAC, fixando políticas de gestão dos recursos financeiros, administrativos, estruturação, racionalização, e adequação dos serviços diversos. Desenvolve planejamento estratégico, identifica oportunidades, avalia a viabilidade e faz recomendações sobre novos investimentos ou desenvolvimento de novos negócios.

A `Equipe de TI` é responsável por manter os recursos de ti(computadores, notebook, projetores, cabos, sistemas, aplicativos) em funcionamento e disponíveis para os colaboradores junto aos docentes conseguirem utilizar esses recursos.

O pessoal da `Limpeza` são responsáveis por manter os locais em geral do SENAC limpos e organizados.


## REQUISITOS

Etapa que contém os  requisitos essências para o sistema 

### REQUISITOS FUNCIONAIS

- `RF-1:` Manter a salas no sistemas - CRUD;
- `RF-2:` Manter usuários do sistema - CRUD; 
- `RF-3:` Manter a reserva de salas - CRUD;
- `RF-4:` Manter informação de manutenção - CRUD;   

### REQUISITOS NÃO FUNCIONAIS

- `RNF-1:` O sistema deve ter uma vesão no browser;
- `RNF-2:` O sistema deve ter uma versão mobile;
- `RNF-3:` O sistema deve ter seu backend construído em *node*
- `RNF-4:` O sistema deve ter seu frontend construído em *react*
- `RNF-5:` O sistema deve ter seu aplicativo mobile construído em *react-native*
- `RNF-6:` O sistema deve deve emitir uma notificação quando houver um reserva de sala para todos os usuários logados, essa notificação deve conter (nome do professor, sala, turno, data);

### REGRAS DE NEGÓCIO

- `RN-1:` O sistema não deve permitir a reserva da sala, caso a mesma já esteja reservada com o mesmo dia e turno por um professor;


## DATABASE

Etapa que contém os modelos essências para `schema` do banco de dados;  

### MODELO RELACIONAL

### MODELO FISÍCO

## PADRÃO DE PROJETOS

- [MVC](encurtador.com.br/bdhtS) - MODEL'S, VIEW'S e CONTROLLERS 

## PROTOTIPOS

