module Pages
    class TelaNew_User < SitePrism::Page
       set_url "/admin/cadastrarusuarios"

        element :btn_cadastrar, "a[data-testid='cadastrarUsuarios']"
        element :btn_cadastrar_sucess, "button[type='submit']"
        element :input_nome , "input[name='nome']"
        element :input_email, "input[name='email']"
        element :input_senha, "input[name='password']"
       

       def new_user(nome,email,senha)
            btn_cadastrar.click
            input_nome.click
            input_nome.set nome
            input_email.click
            input_email.set email
            input_senha.click
            input_senha.set senha
            btn_cadastrar_sucess.click
         end
       
    end
end

# bundle exec cucumber -p default -t@new_user
# bundle exec cucumber -p default -t@new_user_error