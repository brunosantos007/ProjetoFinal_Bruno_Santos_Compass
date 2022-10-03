
Quando('inserir os dados de um novo usuário {string}, {string}, {string}') do |nome, email, senha|
    @login_page.new_user(
        BackEnd.get(nome),
        BackEnd.get(email),
        BackEnd.get(senha)
    )
  end
  
  Então('deverá ser cadastrado') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/admin/listarusuarios")
  end