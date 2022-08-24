Dado('que esteja logado como administrador') do
    @login = Login.new
    @login.load
    @login.email.set 'fulano@qa.com'
    @login.password.set 'teste'
    @login.submit.click
end
  
Dado('acessar a tela de cadastrar usuários') do
    @Cadastropessoa = Cadastropessoa.new
    @Cadastropessoa.box_cadastro.click
end
  
Quando('o usuário preencher os campos corretamente {string}, {string} e {string}') do |string, string2, string3|
    @GenerateData = GenerateData.new
    @Cadastropessoa.nome.set string
    @Cadastropessoa.email.set @GenerateData.generate_email
    @Cadastropessoa.senha.set string3
    @Cadastropessoa.btn_cadastrar_pessoa.click
end
  
Então('deverá exibir a lista de usuários') do
    expect(@Cadastropessoa).to have_content 'Lista dos usuários'
end