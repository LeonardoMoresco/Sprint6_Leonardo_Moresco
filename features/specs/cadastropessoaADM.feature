#language: pt
@cadastropessoaADM
Funcionalidade: Cadastrar novos usuários
    Como usuário administrador da aplicação Front - ServeRest
    Quero realizar um cadastro
    Para utilizar a aplicação

    Contexto:
    Dado que esteja logado como administrador
    E acessar a tela de cadastrar usuários

    Esquema do Cenário: Validar cadastro de novos usuários
        Quando o usuário preencher os campos corretamente "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então deverá exibir a lista de usuários
        Exemplos:
        |Digite seu nome |Digite seu email    |Digite sua senha  |
        |Paulo          |paulo@testando.com   |Teste@123         |