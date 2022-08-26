Dado('que esteja na tela de cadastro do usuário') do #verifica se a tela de cadastro de produto está sendo exibida
    @cadastro = Cadastro.new #instancia a classe Cadastro
    @cadastro.load #carregando a tela de cadastro
end
  
Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3| #preenche os campos
    @GenerateData = GenerateData.new #instancia a classe GenerateData
    $cont += 1  #contador de exemplos
    if ($cont == 6) #quando chegar no teste numerado irá preencher com o faker
        string2 = @GenerateData.generate_email #gera um email
    end
    @cadastro.name_cadastro.set string #preenche o campo nome
    @cadastro.email_cadastro.set string2 #preenche o campo email
    @cadastro.password_cadastro.set string3 #preenche o campo senha
    @cadastro.btn_cadastro.click #clica no botão cadastrar
end
  
Então('deverá ser exibida a {string}') do |string| #verifica se a mensagem de erro está sendo exibida
    expect(@cadastro).to have_content string #verifica se a mensagem de erro está sendo exibida
end                               