#language: pt
@todos_os_testes
@cadastroADM
Funcionalidade: Cadastro de administrador
    Como usuário da aplicação Front - ServeRest
    Quero realizar um cadastro
    Para logar na aplicação

    Contexto:
        Dado que esteja na tela de cadastro
        E marque o campo de cadastrar como administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o usuário deve preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então deve ser exibida a "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email   |Digite sua senha |msg                               |
        |                |switch@ppa.com     |Teste@123        |Nome não pode ficar em branco     |
        |Rodrigo         |                   |Teste@123        |Email é obrigatório               |
        |Rodrigo         |switch@ppa.com     |                 |Password não pode ficar em branco |
        |Rodrigo         |switch@ppa         |Teste@123        |Email deve ser um email válido    |
        |Leonardo        |logado@logado.com  |Teste@123        |Este email já está sendo usado    |
        |Leonardo        |tplink@teste.com   |Teste@123        |Cadastro realizado com sucesso    |

