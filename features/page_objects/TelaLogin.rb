module Pages
class TelaLogin < SitePrism::Page
    set_url "/login"

    # LOGIN
    element :input_email, "input[name='email']"
    element :input_senha, "input[name='password']"
    element :btn_login, "button[class='btn btn-primary']"

    # LOGIN: CADASTRAR USUARIO JÁ LOGADO
    element :btn_cadastrar, "a[data-testid='cadastrarUsuarios']"
    element :btn_cadastrar_sucess, "button[type='submit']"
    element :input_nome , "input[name='nome']"
    element :show_user, "table[name='figurinha']"

    # LOGIN: CADASTRAR PRODUTOS
    element :btn_cadastrar_products, "a[data-testid='cadastrarProdutos']"
    element :name_product, "input[id='nome']"
    element :input_preco, "input[name='price']"
    element :input_descricao, "textarea[name='description']"
    element :input_quantity, "input[name='quantity']"
    element :input_image, "input[name='imagem']"

    # LOGIN: PESQUISAR PRODUTO
    element :input_search, "input[data-testid='pesquisar']"
    element :btn_search, "button[data-testid='botaoPesquisar']"

    # LOGIN: ADICIONAR UM PRODUTO A LISTA
    element :btn_list, "button[data-testid='adicionarNaLista']"

    def login_adm(email,senha)
        # LOGIN PADRAO
        input_email.click
        input_email.set email
        input_senha.click
        input_senha.set senha
        btn_login.click
    end

    def login_default(email,senha)
        input_email.click
        input_email.set email
        input_senha.click
        input_senha.set senha
        btn_login.click
    end

    def new_user(nome,email,senha)
         # LOGIN: CADASTRAR USUARIO
        btn_cadastrar.click
        input_nome.click
        input_nome.set nome
        input_email.click
        input_email.set email
        input_senha.click
        input_senha.set senha
        btn_cadastrar_sucess.click
    end

    def new_product(nome,preco,description,quantity)
        # LOGIN: CADASTRAR PRODUTOS
        btn_cadastrar_products.click
        name_product.set nome
        input_preco.click
        input_preco.set preco
        input_descricao.click
        input_descricao.set description
        input_quantity.click
        input_quantity.set quantity
        btn_cadastrar_sucess.click
    end

    def search_product(product)
        input_search.click
        input_search.set product
        btn_search.click
    end

    def add_product_list(product)
        input_search.click
        input_search.set product
        btn_search.click
        btn_list.click
    end
end
end

# bundle exec cucumber -p default -t@logado_user
# bundle exec cucumber -p default -t@error_login
# bundle exec cucumber -p default -t@search_product
# bundle exec cucumber -p default -t@add_product_list
# bundle exec cucumber -p default -t@new_user
# bundle exec cucumber -p default -t@new_product