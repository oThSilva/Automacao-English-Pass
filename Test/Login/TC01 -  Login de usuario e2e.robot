*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Test Teardown    Close Browser

*** Test Cases ***
Realizando o login e logout
    [Documentation]    Validar se é possóvel realizar login e logout com usuário já cadastrado
    Dado que acesso o site English Pass para login
    Quando eu realizo o login com esse usuário cadastrado
    Então o login deve ser realizado com sucesso
    E faço o logout
