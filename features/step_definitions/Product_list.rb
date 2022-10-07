Dado('que esteja logado') do
    @login_page = Pages::TelaLogin.new 
    @login_page.load
  end
  
  Quando('inserir um produto na Lista de Compras {string}') do |product|
    @TelaProduct_List = Pages::TelaProduct_List.new
    @TelaProduct_List.add_product_list(BackEnd.get(product))
  end
  
  Então('deverá exibir a lista') do
    expect(@login_page).to have_current_path("https://front.serverest.dev/minhaListaDeProdutos")
  end