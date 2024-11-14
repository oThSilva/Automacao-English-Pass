*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Suite Setup    Dado que acesso o site English Pass para realizar o cadastro

*** Test Cases ***
TC01 - Cadastrar usuário no site English Pass
    Quando eu preencho todos os campos corretamente
    E clico no botão "Fazer inscrição"
    Então o usuário deve ser cadastrado com sucesso

    Pause Execution    Verificar site


     
    


