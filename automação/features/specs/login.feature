#language: pt
@todos_os_testes
@login
Funcionalidade: Login de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar login 
    Para usar a aplicação

    Contexto: 
        Dado que esteja na tela de login

    Esquema do Cenário: Validar o login de usuários
        Quando o usuário preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                               |
        |                      |Teste@123        |Email é obrigatório               |
        |teste@testando        |Teste@123        |Email deve ser um email válido    |
        |teste@testando.com    |Teste@12345      |Email e/ou senha inválidos        |
        |teste@testando.com    |                 |Password não pode ficar em branco |
        |teste@testando.com    |Teste@123        |                                  |

    Esquema do Cenário: Login realizado com sucesso
        Quando o usuário preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email         |Digite sua senha |msg                              |
        |logado@logado.com        |Teste@123        |Serverest Store                  |