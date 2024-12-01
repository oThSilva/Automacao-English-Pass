# Testes Automatizados - Cadastro e Login do Site English Pass

Este repositório contém um conjunto de testes automatizados utilizando o Robot Framework, com um total de 15 cenários de teste, incluindo os fluxos End-to-End (E2E) de cadastro de cliente e login no site [English Pass](https://qastage.buildbox.one/18/cadastro/). O objetivo deste projeto é assegurar a qualidade dos processos de cadastro e login, garantindo o cumprimento dos <a href="Critérios de aceite.yaml">critérios de aceite</a>  definidos, <a href="Execução dos teste.mp4">video</a> de evidências  

## Estrutura do Projeto

A estrutura do projeto segue o padrão Page Object Model (POM), promovendo reutilização dos componentes de teste. O plano de teste, escrito em Gherkin/BDD inclui todos os cenários e casos detalhados. [Plano de teste](https://1drv.ms/x/c/728b311c8fe7522c/EZ3hlOIga_ROszVdQXb30aEBNPlX8-Gaa7MvDcjgq4QX1Q?e=R9sIl0).

<img src="Arquitetura projeto automação.png" alt="Arquitetura do projeto" width="800">

## Próximos passos

- Automatizar a geração do documento de evidências para cada execução dos casos de teste.
- Refatorar o projeto com keywords de suporte para melhorar a organização e estrutura.
- Utilizar o Suite Setup e o Suite Teardown para evitar o fechamento do navegador após a execução de cada cenário.



