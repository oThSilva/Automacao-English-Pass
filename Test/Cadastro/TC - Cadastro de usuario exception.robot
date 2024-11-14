*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Test Setup    Dado que acesso o site English Pass para realizar o cadastro
Test Teardown    E devo ser impedido de seguir com o cadastro

*** Test Cases ***
TC02 - Cadastrar usuário com nome inváldo
    Quando eu tento cadastrar um usuário com nome inválido
    Então deve ser retornada a mensagem "Preencha corretamente"

TC03 - Cadastrar usuário com sobrenome inváldo
    Quando eu tento cadastrar um usuário com sobrenome inválido
    Então deve ser retornada a mensagem "Preencha corretamente"

TC04 - Cadastrar usuário com data de nascimento inválida
    Quando eu tento cadastrar um usuário com data de nascimento inválida
    Então deve ser retornada a mensagem "Data de nascimento inválida"

TC05 - Cadastrar usuário com CPF inválido
    Quando eu tento cadastrar um usuário com um CPF inválido
    Então deve ser retornada a mensagem "CPF inválido."

TC06 - Cadastrar usuário com email inválido
    Quando eu tento cadastrar um usuário informando email inválido
    Então deve ser retornada a mensagem "Email inválido."

TC07 - Cadastrar usuário com emails diferentes
    Quando eu tento cadastrar um usuário informando emails diferentes
    Então deve ser retornada a mensagem "Os e-mails não são iguais."

TC08 - Cadastrar usuário com senha inválida
    Quando eu tento cadastrar um usuário informando uma senha inválida
    Então deve ser retornada a mensagem "Insira uma senha válida"

TC09 - Cadastrar usuário com senhas diferentes
    Quando eu tento cadastrar um usuário informando senhas diferentes
    Então deve ser retornada a mensagem "As senhas não são iguais."

TC10 - Cadastrar usuário sem aceitar os termos
    Quando eu tento cadastrar um usuário sem aceitar os termos
    Então deve ser retornada a mensagem "Marque essa caixa se quiser continuar."

# TC11 - Cadastrar usuário com CEP inválido
#     Quando eu tento cadastrar um usuário informando um CEP digitado de forma inválida
#     Então deve ser retornada a mensagem "Precisa ser preenchido"
#     E devo ser impedido de seguir com o cadastro na tela 2

# TC12 - Cadastrar usuário com CEP que não exista
#     Quando eu tento cadastrar um usuário informando um CEP que não exista
#     Então deve ser retornada a mensagem "CEP não encontrado"

# TC13 - Cadastrar usuário com CPF já cadastrado
#     Quando eu tento cadastrar um usuário com um CPF já cadastrado
#     Então deve ser retornada a mensagem "Este CPF já está em uso."

# TC14 - Cadastrar usuário com email já cadastrado
#     Quando eu tento cadastrar um usuário com um email já cadastrado
#     Então deve ser retornada a mensagem "Este email já está em uso."


    


    


