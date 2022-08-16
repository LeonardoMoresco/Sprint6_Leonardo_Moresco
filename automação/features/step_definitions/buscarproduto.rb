Dado('que esteja na Home') do
    @produto = Produto.new
    @produto.load
end
    
Dado('logado com uma conta de usuário') do
  @login = Login.new
  @login.load
  @login.email.set 'logado@logado.com'
  @login.password.set 'Teste@123'
  @login.submit.click
end
  
Quando('realizar uma busca pelo nome do produto {string}') do |string|
  @produto.pesquisar_produtos.set string
  @produto.button_pesquisar.click
end
  
Então('o sistema deverá mostrar os produtos existentes') do
  expect(@produto).to have_xpath('//*[@id="root"]/div/div/h4')
end
