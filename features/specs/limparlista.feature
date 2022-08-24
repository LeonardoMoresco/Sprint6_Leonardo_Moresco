#language: pt
@limparlista
Funcionalidade: Limpar lista de compras
    Como usuário do e-commerce Front - ServeRest
    Quero limpar minha lista de compra
    Para personalizar as minhas compras

    Cenário: Adicionar produto a lista de compra
    Dado que tenha adicionado um produto a minha lista de compra
    Quando clicar em limpar a lista
    Então deverá exibir a mensagem "Lista de Compras"