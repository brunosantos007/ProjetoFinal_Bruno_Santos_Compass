# language: pt

Funcionalidade: Cadastrar um produto sendo Administrador
    Como usuário Adminitrador do ServeRest
    Quero cadastrar um produto
    Para verificar o funcionamento do site

    Contexto: Esteja logado
        Dado que esteja logado

@new_product
Cenário: Cadastrar um produto
    Quando já estiver logado com <email> e <senha>
    E inserir os dados de um novo produto <name_product>, <price>, <description>, <quantity>
    Então deverá ser cadastrado o produto
    Exemplos:
    | email          | senha          | name_product    | price   | description   | quantity   |
    | "email_valido" | "senha_valida" | "nome_produto"  | "price" | "description" | "quantity" |