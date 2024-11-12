*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Suite Setup    Dado que acesso o site English pass para cadastro

*** Test Cases ***
TC01 - Cadastrar usuário no site English Pass
    Quando realizo o cadastro

    Pause Execution    Verificar site

# TC02 - Cadastrar usuário no site English Pass com nome inváldo
     
    


