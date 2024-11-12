*** Variables ***
# Dados de teste
${button_init}                  //button[@id="btn-enroll"]
${input_nome}                   //input[@id="signup-personal-data-firstName"]
${input_sobrenome}              //input[@id="signup-personal-data-lastName"] 
${input_data_nasc}              //input[@id="signup-personal-data-birthDate"]
${input_CPF}                    //input[@id="signup-personal-data-cpf"]
${input_email}                  //input[@id="signup-personal-data-email"]
${input_email_confirm}          //input[@id="signup-personal-data-email-confirm"]
${input_senha}                  //input[@id="signup-personal-data-password"]         
${input_senha_confirm}          //input[@id="signup-personal-data-password-confirm"]  

# Botões
${button_proeficiencia}         //button[@x-ref="button" and @type="button" and .//span[contains(text(), 'Selecione a proficiência')]]
${proeficiencia_intermediate}   //span[text()="Intermediate" and @x-text="option.value"]
${button_termos}                //input[@id="signup-personal-data-lgpd"]  
${button_proximo}               //button[@id="signup_submit_button_1"]

# Dados de teste tela 2
${input_CEP}                    //input[@id="signup-address-cep"]
${input_numero}                 //input[@id="signup-address-number"]

# Botões
${button_next}                  //button[@id="signup_submit_button_3"]

${tela_de_verificao}           //button[@id="wide_window_button"]