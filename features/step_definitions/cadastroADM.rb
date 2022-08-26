Dado('que esteja na tela de cadastro') do #verifica se a tela de cadastro de produto está sendo exibida
    @CadastroADM = CadastroADM.new #instancia a classe CadastroADM
    @cadastro = Cadastro.new #instancia a classe Cadastro 
    @cadastro.load  #carregando a tela de login
end
  
Dado('marque o campo de cadastrar como administrador') do #verifica se a tela de cadastro de produto está sendo exibida
    @cadastroADM = CadastroADM.new #instancia a classe CadastroADM
    @cadastroADM.checkbox_adm.click #marca o checkbox de administrador
end

Quando('o usuário deve preencher os campos {string}, {string} e {string}') do |string, string2, string3| #preenche os campos
    @GenerateData = GenerateData.new #instancia a classe GenerateData
    $cont_adm += 1  #contador de exemplos
    if ($cont_adm == 6) #quando chegar no teste numerado irá preencher com o faker
        string2 = @GenerateData.generate_email #gera um email com o faker
    end
    @cadastro.name_cadastro.set string #preenche o campo nome
    @cadastro.email_cadastro.set string2 #preenche o campo email
    @cadastro.password_cadastro.set string3 #preenche o campo senha
    @cadastro.btn_cadastro.click #clica no botão cadastrar
end
  
Então('deve ser exibida a {string}') do |string| #verifica se a mensagem de erro está sendo exibida
  expect(@cadastro).to have_content string #verifica se a mensagem de erro está sendo exibida
end