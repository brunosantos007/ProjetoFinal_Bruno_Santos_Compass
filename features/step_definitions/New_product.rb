
Quando('inserir os dados de um novo produto {string}, {string}, {string}, {string}') do |nome, preco, descricao, quantidade|
  @TelaNew_Product = Pages::TelaNew_Product.new
  @TelaNew_Product.new_product(
    BackEnd.get(nome),
    BackEnd.get(preco),
    BackEnd.get(descricao),
    BackEnd.get(quantidade)
  )
  end
  
Então('deverá ser cadastrado o produto') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/admin/listarprodutos")
end

Quando('inserir algum dado inválido no Cadastro de Produto {string}, {string}, {string}, {string}') do |nome, preco, descricao, quantidade|
  @TelaNew_Product = Pages::TelaNew_Product.new
  @TelaNew_Product.new_product(
    BackEnd.get(nome),
    BackEnd.get(preco),
    BackEnd.get(descricao),
    BackEnd.get(quantidade)
  )
end
  
Então('receberá uma mensagem {string}') do |string|
    expect(@login_page).to have_content(string)
end