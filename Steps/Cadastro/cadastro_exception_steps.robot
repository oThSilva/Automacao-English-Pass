*** Settings ***

Resource    ../../Resource/settings.robot
Resource    ../../Elements/main_elements.robot
Resource    ../../Resource/data.robot

*** Keywords ***

# Cenário 2
Quando eu tento cadastrar um usuário com nome inválido
    Wait Until Element Is Visible    ${input_nome}
    Input Text                       ${input_nome}             ${nome_sobrenome_invalido}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "Preencha corretamente"
    Wait Until Element Is Visible    ${span_nome_sobrenome_incorreto}

# Cenário 3
Quando eu tento cadastrar um usuário com sobrenome inválido
    Input Text                       ${input_sobrenome}             ${nome_sobrenome_invalido}
    Click Element    ${button_proximo}

# Cenário 4
Quando eu tento cadastrar um usuário com data de nascimento inválida
    Input Text                       ${input_data_nasc}        ${data_nasc_invalida}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "Data de nascimento inválida"
    Wait Until Element Is Visible    ${span_dt_nasc_invalida}

# Cenário 5
Quando eu tento cadastrar um usuário com um CPF inválido
    Input Text                       ${input_CPF}        ${cpf_invalido}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "CPF inválido."
    Wait Until Element Is Visible    ${span_cpf_invalido}    

# Cenário 6
Quando eu tento cadastrar um usuário informando email inválido
    Input Text                       ${input_email}        ${email_invalido}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "Email inválido."
    Wait Until Element Is Visible    ${span_email_invalido}    

# Cenário 7
Quando eu tento cadastrar um usuário informando emails diferentes
    Input Text                       ${input_email}                ${email}
    Input Text                       ${input_email_confirm}        ${email_diferente}
Então deve ser retornada a mensagem "Os e-mails não são iguais."
    Wait Until Element Is Visible    ${span_email_confim}

# Cenário 8
Quando eu tento cadastrar um usuário informando uma senha inválida
    Input Text                       ${input_senha}                ${senha_invalida}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "Insira uma senha válida"
    Wait Until Element Is Visible    ${span_senha_invalida}

# Cenário 9
Quando eu tento cadastrar um usuário informando senhas diferentes
    Input Text                       ${input_senha}                ${senha}
    Input Text                       ${input_senha_confirm}        ${senha_diferente}
Então deve ser retornada a mensagem "As senhas não são iguais." 
    Wait Until Element Is Visible    ${span_senha_confirm}

# Cenário 10
Quando eu tento cadastrar um usuário sem aceitar os termos
    Input Text                       ${input_nome}             ${primeiro_nome}
    Input Text                       ${input_sobrenome}        ${sobrenome}
    Input Text                       ${input_data_nasc}        ${data_nasc}
    Input Text                       ${input_CPF}              ${cpf}
    Input Text                       ${input_email}            ${email}
    Input Text                       ${input_email_confirm}    ${email}
    Input Text                       ${input_senha}            ${senha}
    Input Text                       ${input_senha_confirm}    ${senha}
    Click Element                    ${button_proeficiencia}
    Click Element                    ${proeficiencia_intermediate} 
Então deve ser retornada a mensagem "Marque essa caixa se quiser continuar."
    Wait Until Element Is Visible    ${button_proximo}

# Cenário 11
Quando eu tento cadastrar um usuário informando um CEP digitado de forma inválida
    Input Text                       ${input_nome}             ${primeiro_nome}
    Input Text                       ${input_sobrenome}        ${sobrenome}
    Input Text                       ${input_data_nasc}        ${data_nasc}
    Input Text                       ${input_CPF}              ${cpf}
    Input Text                       ${input_email}            ${email}
    Input Text                       ${input_email_confirm}    ${email}
    Input Text                       ${input_senha}            ${senha}
    Input Text                       ${input_senha_confirm}    ${senha}                    
    Click Element                    ${button_proeficiencia}
    Click Element                    ${proeficiencia_intermediate} 
    Click Element                    ${button_termos}
    Click Element                    ${button_proximo}
    Wait Until Element Is Visible    ${input_CEP}    5s
    Input Text                       ${input_CEP}             ${cep_invalido}
Então deve ser retornada a mensagem "Precisa ser preenchido"
    Wait Until Element Is Visible    ${span_cep_invalido}

# Cenário 12
Quando eu tento cadastrar um usuário informando um CEP que não exista
    Input Text                       ${input_nome}             ${primeiro_nome}
    Input Text                       ${input_sobrenome}        ${sobrenome}
    Input Text                       ${input_data_nasc}        ${data_nasc}
    Input Text                       ${input_CPF}              ${cpf}
    Input Text                       ${input_email}            ${email}
    Input Text                       ${input_email_confirm}    ${email}
    Input Text                       ${input_senha}            ${senha}
    Input Text                       ${input_senha_confirm}    ${senha}                    
    Click Element                    ${button_proeficiencia}
    Click Element                    ${proeficiencia_intermediate} 
    Click Element                    ${button_termos}
    Click Element                    ${button_proximo}
    Wait Until Element Is Visible    ${input_CEP}    5s
    Input Text                       ${input_CEP}             ${cep_n_encontrado}
Então deve ser retornada a mensagem "CEP não encontrado"
    Click Element    ${button_proximo_tela2}
    Wait Until Element Is Visible    ${span_cep_n_encontrado}    20s
    
# Cenário 13
Quando eu tento cadastrar um usuário com um CPF já cadastrado
    Input Text                       ${input_CPF}             ${cpf_repetido}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "Este CPF já está em uso."
    Wait Until Element Is Visible    ${span_cpf_repetido}

# Cenário 14
Quando eu tento cadastrar um usuário com um email já cadastrado
    Input Text                       ${input_email}             ${email_repetido}
    Click Element    ${button_proximo}
Então deve ser retornada a mensagem "Este email já está em uso."
    Wait Until Element Is Visible    ${span_email_repetido}




 

