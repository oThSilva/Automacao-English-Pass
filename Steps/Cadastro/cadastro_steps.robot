*** Settings ***
Resource    ../../Resource/settings.resource
Resource    ../../Elements/main_elements.resource

*** Keywords ***

Dado que acesso o site English pass para cadastro
    Open Browser
    ...    ${url}
    ...    ${browser}
    Maximize Browser Window
    Click Button   
    ...    ${button_init}
E realizo o cadastro
    Input Text                       ${input_nome}         ${primeiro_nome}
    Input Text                       ${input_sobrenome}    ${sobrenome}


    # Wait Until Element Is Visible    ${input_nome}    5s
    # Click Element                    ${}