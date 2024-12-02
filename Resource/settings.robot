*** Settings ***
Resource    ../Elements/main_elements.robot
Library  SeleniumLibrary
Library    Process

*** Variables ***
#Dados gerais
${url}            https://qastage.buildbox.one/18/cadastro/
${url_login}      https://qastage.buildbox.one/
${browser}        gc

*** Keywords ***
# Test Setup
Dado que acesso o site English Pass para realizar o cadastro
    Acessar Site
Acessar Site    
    Open Browser
    ...    ${url}
    ...    ${browser}
    Maximize Browser Window
    Click Button   
    ...    ${button_init}

# Test Teardown
E devo ser impedido de seguir com o cadastro
    Clicar no botão "Proximo" e fechar navegador
Clicar no botão "Proximo" e fechar navegador
    Click Element    ${button_proximo}
    Sleep    3s
    Close Browser
    
# Test Teardown 2
E devo ser impedido de seguir com o cadastro na tela 2
    Clicar no botão "Proximo" da tela 2 e fechar navegador
Clicar no botão "Proximo" da tela 2 e fechar navegador
    Click Element    ${button_proximo_tela2}
    Sleep    3s
    Close Browser

Script para gerar evidência
    Run Process    python    English Pass/Resource/Scripts/gerar_relatorio.py



       
