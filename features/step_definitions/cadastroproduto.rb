Dado('logado como administrador') do
    @login = Login.new
    @login.load
    @login.email.set 'fulano@qa.com'
    @login.password.set 'teste'
    @login.submit.click
    @cadastroProduto = CadastroProduto.new
    @cadastroProduto.btn_produto.click
end
  
Dado('que esteja na tela de cadastro de produto') do
    @cadastroProduto = CadastroProduto.new
end
  
Quando('o usuário administrador preencher os campos {string}, {string}, {string} e {string}') do |string, string2, string3, string4| 
    @GenerateData = GenerateData.new
    $cont_product += 1  #contador de exemplos
    if ($cont_product == 5) #quando chegar no teste numerado irá preencher com o faker
        string = @GenerateData.generate_product
    end
    @cadastroProduto.name.set string
    @cadastroProduto.preco.set string2
    @cadastroProduto.descricao.set string3
    @cadastroProduto.quantidade.set string4
    @cadastroProduto.btn_cadastrar.click
end
  
Então('deverá exibir a {string}') do |string|
    expect(@cadastroProduto).to have_content string
end