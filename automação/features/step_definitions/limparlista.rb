Dado('que tenha adicionado um produto a minha lista de compra') do
    @login = Login.new
    @login.load
    @login.email.set 'logado@logado.com'
    @login.password.set 'Teste@123'
    @login.submit.click
    @lista = Lista.new
    @lista.btn_add_lista.click
  end
  
  Quando('clicar em limpar a lista') do
    @limparlista = Limparlista.new
    @limparlista.btn_limpa_lista.click
  end
  
  Então('deverá exibir a mensagem {string}') do |string|
    expect(@limparlista).to have_content string
  end
