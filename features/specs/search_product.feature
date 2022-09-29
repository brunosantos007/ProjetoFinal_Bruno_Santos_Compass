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