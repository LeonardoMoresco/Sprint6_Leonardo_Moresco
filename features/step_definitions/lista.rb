Dado('que esteja com home produtos aberta') do #verifica se a tela de cadastro de produto está sendo exibida
    @login = Login.new  #instancia a classe Login
    @login.load #carregando a tela de login
    @login.email.set 'logado@logado.com' #preenche o campo email
    @login.password.set 'Teste@123' #preenche o campo senha
    @login.submit.click #clica no botão entrar 
  end
  
  Quando('clicar em adicionar a um dos produtos a lista') do #clica no botão adicionar a lista
    @lista = Lista.new #instancia a classe Lista
    @lista.btn_add_lista.click  #clica no botão adicionar a lista
  end
  
  Então('deverá exibir {string}') do |string| #verifica se a mensagem de erro está sendo exibida
    expect(@lista).to have_content string #verifica se a mensagem de erro está sendo exibida
  end