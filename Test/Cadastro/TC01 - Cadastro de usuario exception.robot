*** Settings ***
Resource    ../../Steps/main_steps.robot
Library    Dialogs

Test Setup    Dado que acesso o site English Pass para realizar o cadastro
Test Teardown    E devo ser impedido de seguir com o cadastro

*** Test Cases ***
Cadastrar usuário com nome inválido
    [Documentation]    Validar se ao cadastrar um usuário com nome inválido é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário com nome inválido
    Então deve ser retornada a mensagem "Preencha corretamente"

Cadastrar usuário com sobrenome inválido
    [Documentation]    Validar se ao cadastrar um usuário com sobrenome inválido é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário com sobrenome inválido
    Então deve ser retornada a mensagem "Preencha corretamente"

Cadastrar usuário com data de nascimento inválida
    [Documentation]    Validar se ao cadastrar um usuário com data de nascimento inválida é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário com data de nascimento inválida
    Então deve ser retornada a mensagem "Data de nascimento inválida"

Cadastrar usuário com CPF inválido
    [Documentation]    Validar se ao cadastrar um usuário com CPF inválido é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário com um CPF inválido
    Então deve ser retornada a mensagem "CPF inválido."

Cadastrar usuário com email inválido
    [Documentation]    Validar se ao cadastrar um usuário com email inválido é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário informando email inválido
    Então deve ser retornada a mensagem "Email inválido."

Cadastrar usuário com emails diferentes
    [Documentation]    Validar se ao cadastrar um usuário com emails diferentes é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário informando emails diferentes
    Então deve ser retornada a mensagem "Os e-mails não são iguais."

Cadastrar usuário com senha inválida
    [Documentation]    Validar se ao cadastrar um usuário com senha inválida é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário informando uma senha inválida
    Então deve ser retornada a mensagem "Insira uma senha válida"

Cadastrar usuário com senhas diferentes
    [Documentation]    Validar se ao cadastrar um usuário com senhas diferentes é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário informando senhas diferentes
    Então deve ser retornada a mensagem "As senhas não são iguais."

Cadastrar usuário sem aceitar os termos
    [Documentation]    Validar se ao cadastrar um usuário sem aceitar os termos é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário sem aceitar os termos
    Então deve ser retornada a mensagem "Marque essa caixa se quiser continuar."

Cadastrar usuário com CEP inválido
    [Documentation]    Validar se ao cadastrar um usuário com CEP inválido é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário informando um CEP digitado de forma inválida
    Então deve ser retornada a mensagem "Precisa ser preenchido"
    [Teardown]    
    E devo ser impedido de seguir com o cadastro na tela 2

Cadastrar usuário com CEP que não exista
    [Documentation]    Validar se ao cadastrar um usuário com CEP que não exista é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário informando um CEP que não exista
    Então deve ser retornada a mensagem "CEP não encontrado"
    [Teardown]    
    E devo ser impedido de seguir com o cadastro na tela 2

Cadastrar usuário com CPF já cadastrado
    [Documentation]    Validar se ao cadastrar um usuário com CPF já cadastrado é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário com um CPF já cadastrado
    Então deve ser retornada a mensagem "Este CPF já está em uso."

Cadastrar usuário com email já cadastrado
    [Documentation]    Validar se ao cadastrar um usuário com email já cadastrado é apresentada uma mensagem amigável
    Quando eu tento cadastrar um usuário com um email já cadastrado
    Então deve ser retornada a mensagem "Este email já está em uso."


    


    


