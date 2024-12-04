*** Variables ***
#Dados de teste "cadastro de usuário e2e" e "TC Login de usuario e2e"

${primeiro_nome}    Thiago
${sobrenome}        Silva
${data_nasc}        24022001
${cpf}              74880662003
${email}            thipereira.aielo@gmail.com
${senha}            Senha1234@ 
${cep}              68903615
${numero}           3

#Dados de teste "cadastro de usuário exception"

${nome_sobrenome_invalido}    thx
${data_nasc_invalida}         31122014
${cpf_invalido}               45032012066
${cpf_repetido}               25756083090
${email_invalido}             thipereira.selva@gmail
${email_diferente}            emaildeteste@hotmail.com
${email_repetido}             thipereira.isilva@gmail.com    
${senha_invalida}             1324
${senha_diferente}            senhadeteste
${cep_invalido}               1702307
${cep_n_encontrado}           01010144