*** Settings ***

Resource    ../../Resource/settings.robot
Resource    ../../Elements/main_elements.robot
Resource    ../../Resource/data.robot

Library    Dialogs

*** Keywords ***


    # Dados de teste
Quando eu preencho todos os campos corretamente
    Input Text                       ${input_nome}             ${primeiro_nome}
    Input Text                       ${input_sobrenome}        ${sobrenome}
    Input Text                       ${input_data_nasc}        ${data_nasc}
    Input Text                       ${input_CPF}              ${cpf}
    Input Text                       ${input_email}            ${email}
    Input Text                       ${input_email_confirm}    ${email}
    Input Text                       ${input_senha}            ${senha}
    Input Text                       ${input_senha_confirm}    ${senha}

    # Botões
    Scroll Element Into View         ${button_proeficiencia}                        
    Wait Until Element Is Visible    ${button_proeficiencia}
    Click Element                    ${button_proeficiencia}
    Click Element                    ${proeficiencia_intermediate} 
    Click Element                    ${button_termos}
    Click Element                    ${button_proximo}
    

    # Dados de teste tela 2
    Input Text                       ${input_CEP}              ${cep}
    Input Text                       ${input_numero}           ${numero} 
    Sleep    4s
E clico no botão "Fazer inscrição"
    # Botões
    Click Element                    ${button_proximo_tela2}
    Sleep    4s
Então o usuário deve ser cadastrado com sucesso
    Element Should Be Visible        ${tela_de_verificao}
    Capture Page Screenshot    English Pass/Results/Photos evidence/Evidência 01.png






 