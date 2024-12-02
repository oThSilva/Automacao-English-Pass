*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Test Teardown    Close Browser

*** Test Cases ***
Cenario 15
    [Documentation]    Realizando o login e logout
    Dado que acesso o site English pass para login
    Quando eu realizo o login com esse usuário cadastrado 
    Então o login deve ser realizado com sucesso
    E faço o logout
    Script para gerar evidência