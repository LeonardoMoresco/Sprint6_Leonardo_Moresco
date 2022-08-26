Dado('que esteja na tela de login') do #verifica se a tela de cadastro de produto está sendo exibida
  @login = Login.new #instancia a classe Login
  @login.load #carregando a tela de login
end

Quando('o usuário preencher os campos {string} e {string}') do |string, string2| #preenche os campos
  @login.email.set string #preenche o campo email
  @login.password.set string2 #preenche o campo senha
  @login.submit.click #clica no botão entrar
end

Então('mensagem é exibida {string}') do |string| #verifica se a mensagem de erro está sendo exibida
  expect(@login).to have_content string #verifica se a mensagem de erro está sendo exibida
end