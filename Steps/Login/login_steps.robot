*** Settings ***

Resource    ../../Resource/settings.resource
Resource    ../../Elements/main_elements.resource

*** Keywords ***

Dado que acesso o site English pass para login
    Open Browser
    ...    ${url_login}
    ...    ${browser}
    Maximize Browser Window
E faço o login
    Input Text       ${input_login}       ${email}
    Input Text       ${input_password}    ${senha}
    Click Element    ${input_sing_in}
    