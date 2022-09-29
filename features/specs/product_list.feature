# language: pt

Funcionalidade: Adicionar um produto a Lista de Compras
    Como usuário do ServeRest
    Quero adicionar um produto a Lista de Compras
    Para verificar o funcionamento do site

    Contexto: Esteja logado
        Dado que esteja logado

@add_product_list
Cenário: Adicionar um produto a Lista de Compras
    Quando já estiver logado com <email> e <senha>
    E inserir um produto na Lista de Compras <product>
    Então deverá exibir a lista
    Exemplos:
    | email              | senha           | product                 |
    | "email_default"    | "senha_default" |  "nome_produto"         |