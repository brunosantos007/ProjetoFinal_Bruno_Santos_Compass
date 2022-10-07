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

@product_error
Cenario: Cadastro de Produto inválido
    Quando já estiver logado com <email> e <senha>
    E inserir algum dado inválido no Cadastro de Produto <name_product>, <price>, <description>, <quantity>
    Então receberá uma mensagem <msg_error>
    Exemplos:
    | email          | senha          | name_product         | price         | description         | quantity                 | msg_error                            |
    | "email_valido" | "senha_valida" | "nome_product_empty" | "price"       | "description"       | "quantity"               | "Nome não pode ficar em branco"      |
    | "email_valido" | "senha_valida" | "nome_produto"       | "price_empty" | "description"       | "quantity"               | "Preco é obrigatório"                |
    | "email_valido" | "senha_valida" | "nome_produto"       | "price"       | "description_empty" | "quantity"               | "Descricao não pode ficar em branco" |
    | "email_valido" | "senha_valida" | "nome_produto"       | "price"       | "description"       | "quantity_product_empty" | "Quantidade é obrigatório"           |