*** Settings ***

Resource    ../../Steps/main_steps.robot

*** Test Cases ***
TC01 - Realizando cadastro no site English Pass
    Dado que acesso o site English pass para cadastro
    E realizo o cadastro

    