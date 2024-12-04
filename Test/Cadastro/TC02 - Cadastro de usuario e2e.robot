*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Test Setup    Dado que acesso o site English Pass para realizar o cadastro
Test Teardown    Close Browser

*** Test Cases ***
Cadastrar usuário no site English Pass
    [Documentation]    Validar se é possível cadastrar um usuário no site English Pass 
    Quando eu preencho todos os campos corretamente
    E clico no botão "Fazer inscrição"
    Então o usuário deve ser cadastrado com sucesso


     
    


