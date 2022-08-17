#language: pt
@todos_os_testes
@cadastro
Funcionalidade: Cadastro de usuário
    Como usuário da aplicação Front - ServeRest
    Quero realizar um cadastro
    Para logar na aplicação

    Contexto:
        Dado que esteja na tela de cadastro do usuário

    Esquema do Cenário: Validar o cadastro do usuário
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então deverá ser exibida a "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email    |Digite sua senha  |msg                                |
        |                |teste@testando.com  |Teste@123         |Nome não pode ficar em branco      | 
        |Teste           |                    |Teste@123         |Email é obrigatório                |
        |Teste           |teste@testando.com  |                  |Password não pode ficar em branco  |
        |Teste           |teste@testando      |Teste@123         |Email deve ser um email válido     |
        |Leonardo        |logado@logado.com   |Teste@123         |Este email já está sendo usado     |
        |Leonardo        |testando@logado.com |Teste@123         |Cadastro realizado com sucesso     |

    
