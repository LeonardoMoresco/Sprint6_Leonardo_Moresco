Quando('o usuário administrador preencher os campos corretamente') do
    @login = Login.new
    @login.load
    @login.email.set 'adm@logado.com'
    @login.password.set 'Teste@123'
    @login.submit.click
end