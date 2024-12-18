*** Settings ***

Resource    ../../Resource/settings.robot
Resource    ../../Elements/main_elements.robot
Resource    ../../Resource/data.robot

*** Keywords ***

Dado que acesso o site English pass para login
    Open Browser
    ...    ${url_login}
    ...    ${browser}
    Maximize Browser Window
Quando eu realizo o login com esse usuário cadastrado 
    Input Text       ${input_login}       ${email}                    
    Input Text       ${input_password}    ${senha}
    Click Element    ${input_sing_in}

Então o login deve ser realizado com sucesso
    Wait Until Element Is Visible    ${a_estudar}
    
E faço o logout
    Wait Until Element Is Visible    ${a_logout}
    Click Element                    ${a_logout}
    Capture Page Screenshot    English Pass/Results/Photos evidence/Evidência{index}.png    