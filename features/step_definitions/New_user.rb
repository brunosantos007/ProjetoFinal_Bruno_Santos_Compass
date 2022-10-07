
Quando('inserir os dados de um novo usuário {string}, {string}, {string}') do |nome, email, senha|
    @TelaNew_User = Pages::TelaNew_User.new
    @TelaNew_User.new_user(BackEnd.get(nome),BackEnd.get(email),BackEnd.get(senha))
  end
  
  Então('deverá ser cadastrado') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/admin/listarusuarios")
  end

  Quando('inserir os dados inválidos de um novo usuário {string}, {string}, {string}') do |nome, email, senha|
    @TelaNew_User = Pages::TelaNew_User.new
    @TelaNew_User.new_user(BackEnd.get(nome),BackEnd.get(email),BackEnd.get(senha))
  end
  
  Então('deverá receber uma mensagem {string}') do |string|
    expect(@login_page).to have_content(string)
  end