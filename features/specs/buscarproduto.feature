#language: pt
@buscarproduto
@selecionado
Funcionalidade: Busca de produtos por nome
    Como um usuário do ecommerce ServeRest
    Quero pesquisar por produtos na home
    Para poder personalizar minhas compras

    Contexto: Estar na Home
    Dado que esteja na Home
    E logado com uma conta de usuário

    Esquema do Cenário: Buscar por produtos existentes
    Quando realizar uma busca pelo nome do produto "<produto>"
    Então o sistema deverá mostrar os produtos existentes
    Exemplos:
    |produto   |
    |Mouse     |
    |Notebook  |
    |Teclado   |
    |Headset   |