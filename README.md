# Testes Automatizados - Cadastro e Login do Site English Pass

Este repositório contém um conjunto de testes automatizados utilizando o Robot Framework, com um total de 15 cenários de teste, incluindo os fluxos End-to-End (E2E) de cadastro de cliente e login no site English Pass ([English Pass](https://qastage.buildbox.one/18/cadastro/)). O objetivo deste projeto é assegurar a qualidade dos processos de cadastro e login, garantindo o cumprimento dos critérios de aceite definidos.

## Estrutura do Projeto

A estrutura do projeto segue o padrão Page Object Model (POM), promovendo reutilização dos componentes de teste. O plano de teste, escrito em Gherkin/BDD inclui todos os cenários e casos detalhados. [Plano de teste](https://1drv.ms/x/c/728b311c8fe7522c/EZ3hlOIga_ROszVdQXb30aEBNPlX8-Gaa7MvDcjgq4QX1Q?e=R9sIl0).

<img src="Arquitetura projeto automação.png" alt="Arquitetura do projeto" width="800">

## Video da execução dos teste.mp4

<video controls width="800">
    <source src="Execução dos teste.mp4" type="video/mp4">
    Seu navegador não suporta a reprodução deste vídeo. Por favor, tente em outro navegador ou atualize seu software.
</video>


## Próximos passos

- Automatizar a geração do documento de evidências para cada execução dos casos de teste.
- Refatorar o projeto com keywords de suporte para melhorar a organização e estrutura.
- Utilizar o Suite Setup e o Suite Teardown para evitar o fechamento do navegador após a execução de cada cenário.



