Dado('que esteja na Home') do #verifica se a tela de cadastro de produto está sendo exibida
  @produto = Produto.new #instancia a classe Produto
  @produto.load #carregando a tela de login
end
    
Dado('logado com uma conta de usuário') do #verifica se a tela de cadastro de produto está sendo exibida
  @login = Login.new #instancia a classe Login
  @login.load #carregando a tela de login
  @login.email.set 'logado@logado.com' #preenche o campo email
  @login.password.set 'Teste@123' #preenche o campo senha
  @login.submit.click #clica no botão entrar
end 
  
Quando('realizar uma busca pelo nome do produto {string}') do |string| #preenche os campos
  @produto.pesquisar_produtos.set string #preenche o campo pesquisar produtos
  @produto.button_pesquisar.click #clica no botão pesquisar
end
  
Então('o sistema deverá mostrar os produtos existentes') do #verifica se a mensagem de erro está sendo exibida
  expect(@produto).to have_selector('#root > div > div > h4') #verifica a existencia do produto pesquisado
end