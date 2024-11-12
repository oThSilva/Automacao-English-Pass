*** Settings ***
Resource    ../../Resource/settings.robot
Resource    ../../Elements/main_elements.robot

Library    Dialogs

*** Keywords ***
# Suite Setup
Dado que acesso o site English pass para cadastro
    Acessar Site
Acessar Site    
    Open Browser
    ...    ${url}
    ...    ${browser}
    Maximize Browser Window
    Click Button   
    ...    ${button_init}

    # Dados de teste
Quando realizo o cadastro
    Input Text                       ${input_nome}             ${primeiro_nome}
    Input Text                       ${input_sobrenome}        ${sobrenome}
    Input Text                       ${input_data_nasc}        ${data_nasc}
    Input Text                       ${input_CPF}              ${cpf}
    Input Text                       ${input_email}            ${email}
    Input Text                       ${input_email_confirm}    ${email}
    Input Text                       ${input_senha}            ${senha}
    Input Text                       ${input_senha_confirm}    ${senha}

    # Botões
    # Wait Until Element Is Visible    ${button_proeficiencia}
    # Scroll Element Into View         ${button_proeficiencia}                        
    Click Element                    ${button_proeficiencia}
    Click Element                    ${proeficiencia_intermediate} 
    Click Element                    ${button_termos}
    Pause Execution    Verificar campos
    Click Element                    ${button_proximo}
    

    # Dados de teste tela 2
    Input Text                       ${input_CEP}              ${cep}
    Input Text                       ${input_numero}           ${numero} 
    Sleep    4s

    # Botões
    Click Element                    ${button_next}
    Sleep    4s
    Element Should Be Visible        ${tela_de_verificao}






 