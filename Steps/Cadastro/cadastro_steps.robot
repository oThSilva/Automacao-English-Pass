*** Settings ***
Resource    ../../Resource/settings.resource
Resource    ../../Elements/main_elements.resource
Library    Dialogs

*** Keywords ***

Dado que acesso o site English pass para cadastro
    Open Browser
    ...    ${url}
    ...    ${browser}
    Maximize Browser Window
    Click Button   
    ...    ${button_init}
E realizo o cadastro
    # Dados de teste
    Input Text                       ${input_nome}             ${primeiro_nome}
    Input Text                       ${input_sobrenome}        ${sobrenome}
    Input Text                       ${input_data_nasc}        ${data_nasc}
    Input Text                       ${input_CPF}              ${cpf}
    Input Text                       ${input_email}            ${email}
    Input Text                       ${input_email_confirm}    ${email}
    Input Text                       ${input_senha}            ${senha}
    Input Text                       ${input_senha_confirm}    ${senha}

    # Botões
    Click Element                    ${button_proeficiencia}
    Click Element                    ${proeficiencia_intermediate} 
    Click Element                    ${button_termos}
    Click Element                    ${button_proximo}
    
    # Dados de teste tela 2
    Input Text                       ${input_CEP}              ${cep}
    Input Text                       ${input_numero}           ${numero} 

    # Botões
    Click Element                    ${button_next}
    





 