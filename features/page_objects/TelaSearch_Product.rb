module Pages
    class TelaSearch_Product < SitePrism::Page
       set_url "/home"

       element :input_search, "input[data-testid='pesquisar']"
       element :btn_search, "button[data-testid='botaoPesquisar']"
       
        def search_product(product)
            input_search.click
            input_search.set product
            btn_search.click
        end

    end
end

# bundle exec cucumber -p default -t@search_product
# bundle exec cucumber -p default -t@search_product_error