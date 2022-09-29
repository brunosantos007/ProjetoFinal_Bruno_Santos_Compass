
Quando('inserir os dados de um novo produto {string}, {string}, {string}, {string}') do |nome, preco, descricao, quantidade|
    @login_page.new_product(
        UserData.get(nome),
        UserData.get(preco),
        UserData.get(descricao),
        UserData.get(quantidade)
    )
  end
  
  Então('deverá ser cadastrado o produto') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/admin/listarprodutos")
  end