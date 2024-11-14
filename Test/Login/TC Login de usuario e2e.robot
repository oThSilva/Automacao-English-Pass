*** Settings ***

Resource    ../../Steps/main_steps.robot
Library    Dialogs

*** Test Cases ***
TC01 - Realizando o login 
    Dado que acesso o site English pass para login
    E faço o login
    
    Pause Execution    Verificar navegador
