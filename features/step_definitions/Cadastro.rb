Dado('que esteja na tela de Cadastro') do
    @cadastro_page = Pages::TelaCadastro.new 
    @cadastro_page.load
  end

Quando('inserir os dados válidos {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastrar_adm(
    BackEnd.get(nome),
    BackEnd.get(email),
    BackEnd.get(senha)
  )
end
  
Então('o usuário administrador deverá ser cadastrado com a mensagem {string}') do |string|
  expect(@cadastro_page).to have_content(string)
end

Quando('inserir os dados inválidos {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastrar_adm(
    BackEnd.get(nome),
    BackEnd.get(email),
    BackEnd.get(senha)
  )
end

Então('o usuário deverá receber uma mensagem {string}') do |mensagem|
  expect(@cadastro_page).to have_content(mensagem)
end

Quando('inserir os dados {string}, {string}, {string}') do |nome, email, senha|
  @cadastro_page.cadastro_default(
    BackEnd.get(nome),
    BackEnd.get(email),
    BackEnd.get(senha)
  )
end

Então('o user default será cadastrado {string}') do |mensagem|
  expect(@cadastro_page).to have_content(mensagem)
end