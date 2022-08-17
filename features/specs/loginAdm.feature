#language: pt
@todos_os_testes
@loginAdm
Funcionalidade: Login de usuário como administrador
    Como usuário administrador do e-commerce Front - ServeRest
    Quero realizar login 
    Para usar a aplicação

    Contexto: 
        Dado que esteja na tela de login

    Esquema do Cenário: Login realizado com sucesso
        Quando o usuário administrador preencher os campos corretamente
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email         |Digite sua senha |msg                                               |
        |adm@logado.com           |Teste@123        |Este é seu sistema para administrar seu ecommerce.|