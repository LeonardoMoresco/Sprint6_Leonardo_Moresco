Dado('que esteja na tela de cadastro') do
    @CadastroADM = CadastroADM.new
    @cadastro = Cadastro.new
    @cadastro.load
end
  
Dado('marque o campo de cadastrar como administrador') do
    @cadastroADM = CadastroADM.new
    @cadastroADM.checkbox_adm.click
end

Quando('o usuário deve preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @GenerateData = GenerateData.new
    $cont_adm += 1  #contador de exemplos
    if ($cont_adm == 6) #quando chegar no teste numerado irá preencher com o faker
        string2 = @GenerateData.generate_email
    end
    @cadastro.name_cadastro.set string
    @cadastro.email_cadastro.set string2
    @cadastro.password_cadastro.set string3
    @cadastro.btn_cadastro.click
end
  
Então('deve ser exibida a {string}') do |string|
  expect(@cadastro).to have_content string
end