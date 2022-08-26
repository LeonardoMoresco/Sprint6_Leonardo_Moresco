Quando('o usuário administrador preencher os campos corretamente') do #preenche os campos
    @login = Login.new #instancia a classe Login
    @login.load #carregando a tela de login
    @login.email.set 'fulano@qa.com' #preenche o campo email
    @login.password.set 'teste' #preenche o campo senha
    @login.submit.click #clica no botão entrar
end