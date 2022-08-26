Dado('que tenha adicionado um produto a minha lista de compra') do #verifica se o produto foi adicionado a minha lista de compra
    @login = Login.new #instancia a classe Login
    @login.load #carregando a tela de login
    @login.email.set 'logado@logado.com' #preenche o campo email
    @login.password.set 'Teste@123' #preenche o campo senha
    @login.submit.click #clica no botão entrar
    @lista = Lista.new #instancia a classe Lista
    @lista.btn_add_lista.click #clica no botão adicionar a lista
  end
  
  Quando('clicar em limpar a lista') do #clica no botão limpar a lista
    @limparlista = Limparlista.new #instancia a classe Limparlista
    @limparlista.btn_limpa_lista.click #clica no botão limpar a lista
  end
  
  Então('deverá exibir a mensagem {string}') do |string| #verifica se a mensagem de erro está sendo exibida
    expect(@limparlista).to have_content string #verifica se a mensagem de erro está sendo exibida
  end
