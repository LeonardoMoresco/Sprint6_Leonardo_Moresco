Dado('que esteja na tela de cadastro do usuário') do
    @cadastro = Cadastro.new
    @cadastro.load
end
  
Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @cadastro.name_cadastro.set string
    @cadastro.email_cadastro.set string2
    @cadastro.password_cadastro.set string3
    @cadastro.btn_cadastro.click
end
  
Então('deverá ser exibida a {string}') do |string|
    expect(@cadastro).to have_content string
end

Quando('o usuário digitar nos campos {string} e {string}') do |string, string2|
    @GenerateData = GenerateData.new
    @cadastro.email_cadastro.set @GenerateData.generate_email 
    @cadastro.password_cadastro.set string2
    @cadastro.name_cadastro.set string
    @cadastro.btn_cadastro.click
end                                                                            