*** Variables ***
# Dados de teste
${button_init}                   //button[@id="btn-enroll"]
${input_nome}                   id:signup-personal-data-firstName
${input_sobrenome}              id:signup-personal-data-lastName 
${input_data_nasc}              id:signup-personal-data-birthDate
${input_CPF}                    id:signup-personal-data-cpf
${input_email}                  id:signup-personal-data-email
${input_email_confirm}          id:signup-personal-data-email-confirm
${input_senha}                  id:signup-personal-data-password         
${input_senha_confirm}          id:signup-personal-data-password-confirm  

# Botões
${button_proeficiencia}         //button[.//span[contains(text(), "Selecione a proficiência")]]
${proeficiencia_intermediate}   //span[text()="Intermediate"]
${button_termos}                //input[@class="form-control form-input input-checkbox cursor-pointer form-input-checkbox" and @id="signup-personal-data-lgpd"]  
${button_proximo}               //button[@id="signup_submit_button_1" and @name="signup_submit_button_1"]

# Dados de teste tela 2
${input_CEP}                    id:signup-address-cep
${input_numero}                 id:signup-address-number

# Botões
${button_next}                     //button[@id="signup_submit_button_3" and @name="signup_submit_button_3"]