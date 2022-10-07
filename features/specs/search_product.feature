# language: pt

Funcionalidade: Pesquisar Produtos
    Como usuário do ServeRest
    Quero realizar uma pesquisa de produto
    Para verificar o funcionamento do site

    Contexto: Esteja logado
        Dado que esteja já logado

@search_product
Cenário: Pesquisa de produtos
    Quando já estiver logado com <email> e <senha>
    E pesquisar pelo produto <product>
    Então deverá ser exibido o resultado <sucess>

    Exemplos:
    | email              | senha           | product                 | sucess         |
    | "email_default"    | "senha_default" |  "nome_produto"         | "nome_produto" |

@search_product_error
Cenário: Pesquisa de produto inválido
    Quando já estiver logado com <email> e <senha>
    E pesquisar por um produto inválido <product>
    Então deverá ser exibida uma mensagem <msg_error>

    Exemplos:
    | email              | senha           | product            | msg_error                       |
    | "email_default"    | "senha_default" |  "invalid_product" | "Nenhum produto foi encontrado" |