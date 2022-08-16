Dado('que esteja com home produtos aberta') do
    @login = Login.new
    @login.load
    @login.email.set 'logado@logado.com'
    @login.password.set 'Teste@123'
    @login.submit.click
  end
  
  Quando('clicar em adicionar a um dos produtos a lista') do
    @lista = Lista.new
    @lista.btn_add_lista.click
  end
  
  Então('deverá exibir {string}') do |string|
    expect(@lista).to have_content string
  end