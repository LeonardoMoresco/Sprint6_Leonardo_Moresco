Dado('que esteja logado como administrador') do #dado que está logado como administrador
    @login = Login.new #instancia a classe Login
    @login.load #carregando a tela de login 
    @login.email.set 'fulano@qa.com' #preenche o campo email
    @login.password.set 'teste' #preenche o campo senha
    @login.submit.click #clica no botão entrar 
end
  
Dado('acessar a tela de cadastrar usuários') do #dado que está logado como administrador
    @Cadastropessoa = Cadastropessoa.new #instancia a classe Cadastropessoa
    @Cadastropessoa.box_cadastro.click  #clica no botão cadastrar
end
  
Quando('o usuário preencher os campos corretamente {string}, {string} e {string}') do |string, string2, string3| #quando o usuário preencher os campos corretamente
    @GenerateData = GenerateData.new #instancia a classe GenerateData
    @Cadastropessoa.nome.set string #preenche o campo nome
    @Cadastropessoa.email.set @GenerateData.generate_email #preenche o campo email
    @Cadastropessoa.senha.set string3 #preenche o campo senha
    @Cadastropessoa.btn_cadastrar_pessoa.click #clica no botão cadastrar
end
  
Então('deverá exibir a lista de usuários') do #então deverá exibir a lista de usuários
    expect(@Cadastropessoa).to have_content 'Lista dos usuários' #verifica se a mensagem de erro está sendo exibida
end