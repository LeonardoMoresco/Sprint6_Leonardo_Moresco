Quando('o usuário administrador preencher os campos corretamente') do
    @login = Login.new
    @login.load
    @login.email.set 'fulano@qa.com'
    @login.password.set 'teste'
    @login.submit.click
end