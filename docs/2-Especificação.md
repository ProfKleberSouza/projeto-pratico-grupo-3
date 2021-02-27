# Especificações Do Projeto

## Personas

​	João Paulo tem 23 anos, é estudante de educação física e faz academia para manter um corpo estético e saudável. Treina 5 vezes na semana e quer evitar aglomerações por conta do vírus Covid-19. Com isso, João precisa de uma forma para ir à academia sem que encontre com muitas pessoas.	

​	Marcelo tem 39 anos e é dono de uma rede de academias. Por conta do lockdown, manteve sua academia fechada por muito tempo. Ele precisa reabrir seu negócio, mas se adequando às legislações vigentes devido ao vírus.

## Histórias de Usuários

Com base na análise das personas forma identificadas as seguintes histórias de usuários:

| EU COMO... `PERSONA`  | QUERO/PRECISO ... `FUNCIONALIDADE`                           | PARA ... `MOTIVO/VALOR`                                      |
| --------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Usuário cliente       | Cadastrar-me no aplicativo                                   | Para ter acesso às academias e horários disponíveis          |
| Usuário Administrador | Cadastrar minha academia                                     | Para que minha academia seja incluída no catálogo            |
| Usuário cliente       | Ver a lotação da academia em horários disponíveis            | Para evitar aglomerações na hora do treino, e ter mais segurança |
| Usuário cliente       | Agendar horário de treino                                    | Para que o usuário escolha o horário mais confortável        |
| Usuário Administrador | Preciso de um relatório da quantidade de pessoas que frequentaram a academia | Para ter um melhor gerenciamento de fluxo de alunos          |
| Usuário cliente       | Preciso de contatar os donos da academia                     | Para maiores informações, tirar dúvidas                      |
| Usuário Administrador | Preciso ter um chat disponível                               | Para prover melhor comunicação com meu cliente               |

## Requisitos

As tabelas que se seguem apresentam os requisitos funcionais e não funcionais que detalham o escopo do projeto.

### Requisitos Funcionais

|ID    | Descrição do Requisito  | Prioridade |
|------|-----------------------------------------|----|
|RF-001| Permitir que o usuário cadastre tarefas | ALTA |
|RF-002| Emitir um relatório de tarefas no mês   | MÉDIA |


### Requisitos não Funcionais

|ID     | Descrição do Requisito  |Prioridade |
|-------|-------------------------|----|
|RNF-001| O sistema deve ser responsivo para rodar em um dispositivos móvel | MÉDIA |
|RNF-002| Deve processar requisições do usuário em no máximo 3s |  BAIXA |

> Com base nas Histórias de Usuário, enumere os requisitos da sua
> solução. Classifique esses requisitos em dois grupos:
>
> - [Requisitos Funcionais
>   (RF)](https://pt.wikipedia.org/wiki/Requisito_funcional):
>   correspondem a uma funcionalidade que deve estar presente na
>   plataforma (ex: cadastro de usuário).
>
> - [Requisitos Não Funcionais
>   (RNF)](https://pt.wikipedia.org/wiki/Requisito_n%C3%A3o_funcional):
>   correspondem a uma característica técnica, seja de usabilidade,
>   desempenho, confiabilidade, segurança ou outro (ex: suporte a
>   dispositivos iOS e Android).
>
> Lembre-se que cada requisito deve corresponder à uma e somente uma
> característica alvo da sua solução. Além disso, certifique-se de que
> todos os aspectos capturados nas Histórias de Usuário foram cobertos.

## Restrições

O projeto está restrito pelos itens apresentados na tabela a seguir.

|ID| Restrição                                             |
|--|-------------------------------------------------------|
|01| O projeto deverá ser entregue até o final do semestre |
|02| Não pode ser desenvolvido um módulo de backend        |


> Enumere as restrições à sua solução. Lembre-se de que as restrições
> geralmente limitam a solução candidata.
> 
> **Links Úteis**:
> - [O que são Requisitos Funcionais e Requisitos Não Funcionais?](https://codificar.com.br/requisitos-funcionais-nao-funcionais/)
> - [O que são requisitos funcionais e requisitos não funcionais?](https://analisederequisitos.com.br/requisitos-funcionais-e-requisitos-nao-funcionais-o-que-sao/)
