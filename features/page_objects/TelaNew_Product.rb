module Pages
    class TelaNew_Product < SitePrism::Page
       set_url "/admin/cadastrarprodutos"

        element :btn_cadastrar_products, "a[data-testid='cadastrarProdutos']"
        element :name_product, "input[id='nome']"
        element :input_preco, "input[name='price']"
        element :input_descricao, "textarea[name='description']"
        element :input_quantity, "input[name='quantity']"
        element :btn_cadastrar_sucess, "button[type='submit']"
 
       def new_product(nome,preco,description,quantity)
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
    end
end

# bundle exec cucumber -p default -t@new_product
# bundle exec cucumber -p default -t@product_error