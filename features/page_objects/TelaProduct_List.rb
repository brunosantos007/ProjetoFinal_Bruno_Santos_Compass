module Pages
    class TelaProduct_List < SitePrism::Page
       set_url "/minhaListaDeProdutos"

       element :input_search, "input[data-testid='pesquisar']"
       element :btn_search, "button[data-testid='botaoPesquisar']"
       element :btn_list, "button[data-testid='adicionarNaLista']"
       
       def add_product_list(product)
            input_search.click
            input_search.set product
            btn_search.click
            btn_list.click
        end

    end
end

# bundle exec cucumber -p default -t@add_product_list