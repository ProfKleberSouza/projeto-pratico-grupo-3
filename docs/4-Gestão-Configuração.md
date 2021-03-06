# Gestão de Configuração

## Controle de Versão

A ferramenta de controle de versão adotada no projeto foi o
[Git](https://git-scm.com/) , padronizado com o [Gitflow](https://www.atlassian.com/br/git/tutorials/comparing-workflows/gitflow-workflow), sendo que o [Github](https://github.com)
foi utilizado para hospedagem do repositório `upstream`.

## Estrutura de Repositório - Git Flow

##### **O projeto segue a seguinte convenção para o nome dos repositórios:**

##### master

Branch principal do repositório no qual as alterações devem ser realizadas somente através de Pull Requests. O código armazenado neste ponteiro deve ser o código implementado em ambiente de produção.

##### develop

Branch intermediária baseada na master e todas as novas features devem ser baseadas deste branch.

---

O **GitFlow** é um conjunto de políticas para organizar as estruturas de branches em um determinado repositório utilizando o versionamento Git.

Para instalar o gitflow:

```
git flow init 
```

##### O projeto segue a seguinte convenção do GitFlow para nome de branches:

##### feature/código-do-issue

São usadas para desenvolver novas funcionalidades para a próxima release. Esta branch deve existir apenas enquanto a funcionalidade está em desenvolvimento e após finalizado, o código deverá ser mesclado para o branch develop através de Pull Request ou descartado em casos de PoCs (Provas de Conceito).

![image-20210305204409607](https://nvie.com/img/fb@2x.png)

Imagem obtida no artigo [A successful Git branching model](https://nvie.com/posts/a-successful-git-branching-model/) 

Criando uma feature branch, deve ser criada a partir de develop:

```
git flow feature start myFeature
```

##### hotfix/nome-do-erro

Branch utilizada para corrigir erros de produção. A branch deve ser baseada na master e após a correção deve ser mesclada em develop e master

![image-20210305210509485](https://nvie.com/img/hotfix-branches@2x.png)

Criando um hotfix branch, deve ser criada a partir da master:

```
git flow hotfix start myhotfix
```

##### bugfix/nome-do-erro

Branch utilizada para corrigir erros em develop. A branch deve ser baseada na develop e após a correção deve ser mesclada em develop

```
git flow bugfix start mybugfix
```

## Hospedagem

O serviço de hospedagem utilizado pelo grupo será o Heroku, serviço gratis para que seja feita a sustentação de toda a aplicação.

