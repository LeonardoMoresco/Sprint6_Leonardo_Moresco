Dado('que esteja na tela de cadastro do usuário') do
    @cadastro = Cadastro.new
    @cadastro.load
end
  
Quando('o usuário preencher os campos {string}, {string} e {string}') do |string, string2, string3|
    @GenerateData = GenerateData.new
    $cont += 1  #contador de exemplos
    if ($cont == 6) #quando chegar no teste numerado irá preencher com o faker
        string2 = @GenerateData.generate_email
    end
    @cadastro.name_cadastro.set string
    @cadastro.email_cadastro.set string2
    @cadastro.password_cadastro.set string3
    @cadastro.btn_cadastro.click
end
  
Então('deverá ser exibida a {string}') do |string|
    expect(@cadastro).to have_content string
end                               