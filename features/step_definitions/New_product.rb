
Quando('inserir os dados de um novo produto {string}, {string}, {string}, {string}') do |nome, preco, descricao, quantidade|
    @login_page.new_product(
        BackEnd.get(nome),
        BackEnd.get(preco),
        BackEnd.get(descricao),
        BackEnd.get(quantidade)
    )
  end
  
  Então('deverá ser cadastrado o produto') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/admin/listarprodutos")
  end