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