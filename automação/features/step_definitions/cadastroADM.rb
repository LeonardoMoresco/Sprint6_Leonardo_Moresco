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
    @cadastroADM.name.set string
    @cadastroADM.email.set string2
    @cadastroADM.password.set string3
    @cadastroADM.btn_cadastro.click
end
  
Então('deve ser exibida a {string}') do |string|
  expect(@cadastro).to have_content string
end

Quando('o usuário preencher os campos de dados {string} e {string}') do |string, string2|
    @GenerateData = GenerateData.new
    @cadastro.email_cadastro.set @GenerateData.generate_email 
    @cadastro.password_cadastro.set string2
    @cadastro.name_cadastro.set string
    @cadastro.btn_cadastro.click
end            