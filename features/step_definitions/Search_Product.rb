Dado('que esteja já logado') do
  @login_page = Pages::TelaLogin.new 
  @login_page.load
end

Quando('já estiver logado com {string} e {string}') do |email, senha|
  @login_page.login_default(BackEnd.get(email), BackEnd.get(senha))
end

Quando('pesquisar pelo produto {string}') do |product|
  @TelaSearch_Product = Pages::TelaSearch_Product.new
  @TelaSearch_Product.search_product(BackEnd.get(product))
end

Então('deverá ser exibido o resultado {string}') do |sucess|
  expect(@login_page).to have_content(BackEnd.get(sucess))
end

Quando('pesquisar por um produto inválido {string}') do |product|
  @TelaSearch_Product = Pages::TelaSearch_Product.new
  @TelaSearch_Product.search_product(BackEnd.get(product))
end

Então('deverá ser exibida uma mensagem {string}') do |string|
  expect(@TelaSearch_Product).to have_content(string)
end