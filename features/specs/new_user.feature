# language: pt

Funcionalidade: Cadastrar um usuário sendo Administrador
    Como usuário Adminitrador do ServeRest
    Quero cadastrar um usuário
    Para verificar o funcionamento do site

    Contexto: Esteja logado
        Dado que esteja logado

@new_user
Cenário: Cadastrar um usuário
    Quando já estiver logado com <email> e <senha>
    E inserir os dados de um novo usuário <nome>, <new_email>, <new_senha>
    Então deverá ser cadastrado
    Exemplos:
    | email              | senha           | nome       | new_email   | new_senha   |
    | "email_valido"     | "senha_valida"  | "new_nome" | "new_email" | "new_senha" |

@new_user_error
Cenário: Cadastrar um usuário inválido
    Quando já estiver logado com <email> e <senha>
    E inserir os dados inválidos de um novo usuário <nome>, <new_email>, <new_senha>
    Então deverá receber uma mensagem <msg_error>
    Exemplos:
    | email              | senha           | nome             | new_email         | new_senha         | msg_error                           |
    | "email_valido"     | "senha_valida"  | "new_nome_empty" | "new_email_empty" | "new_senha_empty" | "Nome não pode ficar em branco"     |  
    | "email_valido"     | "senha_valida"  | "new_nome_empty" | "new_email"       | "new_senha"       | "Nome não pode ficar em branco"     |  
    | "email_valido"     | "senha_valida"  | "new_nome"       | "new_email_empty" | "new_senha"       | "Email é obrigatório"               |
    | "email_valido"     | "senha_valida"  | "new_nome"       | "new_email_empty" | "new_senha_empty" | "Password não pode ficar em branco" |
    | "email_valido"     | "senha_valida"  | "new_nome"       | "new_email"       | "new_senha_empty" | "Password não pode ficar em branco" |