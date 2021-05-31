# Avaliação da Aplicação

<span style="color:red">Pré-requisitos: <a href="6-Implementação.md"> Projeto da Solução</a></span>  
O objetivo de um teste unitário é verificar a correção de uma unidade de lógica sob uma variedade de condições. Desta forma, nossos testes serão focados em testar uma função, método ou classe usada no negócio.
##### Ostestesunitáriossão:
- Testesdafunçãodelogin,querealizaavalidaçãoseexisteumusuáriodoaplicativocadastradocomologinesenhainseridos;
-  TestesdarequisiçãodogetpeopleSchedulePerDayedogethistoricChatrealizandoumavalidaçãodoretornoetratamentodosdados;
- TestedasclassesmodelsdePeopleSchedluedePeoplePerDayparaverificaracorreçãodesuasconversõesrealizadasdeJsonparaDomain.
Em relação ao teste de usabilidade, é um método de verificação de funcionalidades da interface de uma plataforma digital, que leva usuários reais à execução de determinadas tarefas. Após sua realização, é realizada uma análise de usabilidade e das principais dificuldades encontradas neste processo. 
##### Ostestesdeusabilidadequedefinimossão:
-  TestesdefuncionalidadedoslabelsnateladeLogindenevegaçãodobotão"Entrar"paratelaprincipal;
- Testesdefuncionalidadedebotõesdoheadernatelaprincipal,doscardsdehorárioesuarespectivaação;
- Testesdefuncionalidadedateladechat,aoapertaremumarespectivaconversa,etambémdeenviodemensagenseescritaemlabels.

## Plano de Testes

#### Testes unitários:

- Teste unitário mockando a requisição de login e validando o retorno;
- Teste unitário mockando a requisição de get peopleSchedulePerDay ao Realtime Database e verificando o retorno e o tratamento dos dados;
- Teste unitário também das classes models de PeopleSchedlued e PeoplePerDay validando suas conversões de Json para Domain;
- Teste unitario da requisição get historicChat ao Realtime Database e verificando o retorno e o tratamento dos dados;

#### Testes Usabilidade:

- Tela de login: 

  - Verificar se ao digitar sobre o label Email e  Senha a mesma digitação aparece na tela; 
  - Verificar se ao clicar no botão entrar ele redireciona para página principal;

- Tela principal:

  - Verificar se ao clicar no card de horas aparece um pop-up e suas respectivas informações;
  - Verificar se ao clicar no menu sanduiche esse aparece o Menu com seus respectivos ícones;
  - Verificar se ao clicar em calendário aparece um calendário;
  - Verificar se ao clicar em ícone principal do aplicativo ele abre a mesma tela principal;

- Tela de chat:

  - Verificar se ao apertar na conversa aparece uma tela de chat privado;

  - Verificar se ao digitar a informação no label a mesma informação aparece na tela;
  - Verificar se a informação digitada enviada aparece na tela de de mensagens enviadas;
  - Verificar se um histórico aparece na tela de mensagens;

## Ferramentas de Testes (Opcional)

- Mock - Mockito;
- Cypress - teste de usabilidade;

## Avaliação

> Discorra sobre os resultados do teste. Ressaltando pontos fortes e
> fracos identificados na solução. Comente como o grupo pretende atacar
> esses pontos nas próximas iterações. Apresente as falhas detectadas e
> as melhorias geradas a partir dos resultados obtidos nos testes.
