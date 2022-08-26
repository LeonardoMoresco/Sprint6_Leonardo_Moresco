Dado('logado como administrador') do #dado que está logado como administrador
    @login = Login.new #instancia a classe Login
    @login.load #carregando a tela de login
    @login.email.set 'fulano@qa.com' #preenche o campo email
    @login.password.set 'teste' #preenche o campo senha
    @login.submit.click #clica no botão entrar
    @cadastroProduto = CadastroProduto.new #instancia a classe CadastroProduto
    @cadastroProduto.btn_produto.click #clica no botão produto
end 
  
Dado('que esteja na tela de cadastro de produto') do #verifica se a tela de cadastro de produto está sendo exibida
    @cadastroProduto = CadastroProduto.new #instancia a classe CadastroProduto
end
  
Quando('o usuário administrador preencher os campos {string}, {string}, {string} e {string}') do |string, string2, string3, string4| 
    @GenerateData = GenerateData.new #instancia a classe GenerateData
    $cont_product += 1  #contador de exemplos de produto
    if ($cont_product == 5) #quando chegar no teste numerado irá preencher com o faker
        string = @GenerateData.generate_product #gera um nome de produto
    end
    @cadastroProduto.name.set string #preenche o campo nome
    @cadastroProduto.preco.set string2 #preenche o campo preço
    @cadastroProduto.descricao.set string3 #preenche o campo descrição
    @cadastroProduto.quantidade.set string4 #preenche o campo quantidade
    @cadastroProduto.btn_cadastrar.click #clica no botão cadastrar
end
  
Então('deverá exibir a {string}') do |string| #verifica se a mensagem de erro está sendo exibida
    expect(@cadastroProduto).to have_content string #verifica se a mensagem de erro está sendo exibida
end