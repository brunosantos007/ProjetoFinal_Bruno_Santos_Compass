Dado('que esteja logado') do
    @login_page = Pages::TelaLogin.new 
    @login_page.load
  end
  
  Quando('inserir um produto na Lista de Compras {string}') do |product|
    @login_page.add_product_list(BackEnd.get(product))
  end
  
  Então('deverá exibir a lista') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/minhaListaDeProdutos")
  end