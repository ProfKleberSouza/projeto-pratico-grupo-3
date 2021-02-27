# Especificações Do Projeto

## Personas

​	João Paulo tem 23 anos, é estudante de educação física e faz academia para manter um corpo estético e saudável. Treina 5 vezes na semana e quer evitar aglomerações por conta do vírus Covid-19. Com isso, João precisa de uma forma para ir à academia sem que encontre com muitas pessoas.	

​	Marcelo tem 39 anos e é dono de uma rede de academias. Por conta do lockdown, manteve sua academia fechada por muito tempo. Ele precisa reabrir seu negócio, mas se adequando às restrições sanitárias vigentes devido ao vírus.

## Histórias de Usuários

Com base na análise das personas forma identificadas as seguintes histórias de usuários:

| EU COMO... `PERSONA`  | QUERO/PRECISO ... `FUNCIONALIDADE`       | PARA ... `MOTIVO/VALOR`                  |
| --------------------- | ---------------------------------------- | ---------------------------------------- |
| Usuário cliente       | Cadastrar-me no aplicativo               | Para ter acesso às academias e horários disponíveis |
| Usuário Administrador | Cadastrar minha academia                 | Para que minha academia seja incluída no catálogo |
| Usuário cliente       | Ver a lotação da academia em horários disponíveis | Para evitar aglomerações na hora do treino, e ter mais segurança |
| Usuário cliente       | Agendar horário de treino                | Para que o usuário escolha o horário mais confortável |
| Usuário Administrador | Preciso de um relatório da quantidade de pessoas que frequentaram a academia | Para ter um melhor gerenciamento de fluxo de alunos |
| Usuário cliente       | Preciso de contatar os donos da academia | Para maiores informações, tirar dúvidas  |
| Usuário Administrador | Preciso ter um chat disponível           | Para prover melhor comunicação com meu cliente |

## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto.

### Requisitos Funcionais

|   ID   | Descrição do Requisito                   | Prioridade |
| :----: | ---------------------------------------- | :--------: |
| RF-001 | O sistema deve permitir que os usuários se cadastrem, escolhendo sua unidade de academia |    ALTA    |
| RF-002 | O sistema deve permitir o usuário ter uma visão geral de horários mais cheios |    ALTA    |
| RF-003 | O sistema deve permitir que o usuário marque o horário que quer treinar |    ALTA    |
| RF-004 | O sistema deve permitir que o usuário tenha um meio de comunicação com a academia |    ALTA    |
| RF-005 | O sistema deve permitir o cadastro de academias |    ALTA    |
| RF-006 | O sistema deve permitir que os gestores de academia consigam ter um relatório de alunos por horário |    ALTA    |


### Requisitos não Funcionais

|   ID    | Descrição do Requisito                   | Prioridade |
| :-----: | ---------------------------------------- | :--------: |
| RNF-001 | O sistema deve ser responsivo para se adaptar em um dispositivo móvel |   MÉDIA    |
| RNF-002 | O sistema deve processar requisições do usuário em no máximo 3s |   BAIXA    |
| RNF-003 | O sistema deve ser feito na linguagem Dart usando o framework Flutter |    ALTA    |
| RNF-004 | O sistema deve ser persistido em banco de dados MySQL |    ALTA    |
| RNF-005 | O sistema deve bloquear a inscrição de usuário por horário quando chegar ao número máximo definido pela academia no cadastro |    ALTA    |

## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|  ID  | Restrição                                |
| :--: | ---------------------------------------- |
|  01  | O projeto deverá ser entregue até o final do semestre |
|  02  | O projeto deve fornecer um meio de troca de mensagens entre usuários e administradores |
|  03  | O projeto deve ser desenvolvido com o framework Flutter em linguagem Dart |
