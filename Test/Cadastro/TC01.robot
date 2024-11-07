*** Settings ***

Resource    ../../Steps/main_steps.robot
Library    Dialogs

*** Test Cases ***
TC01 - Realizando cadastro no site English Pass
    Dado que acesso o site English pass para cadastro
    E realizo o cadastro
    
    Pause Execution    Verificar pagina




