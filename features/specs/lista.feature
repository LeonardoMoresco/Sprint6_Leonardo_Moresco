#language: pt
@lista
@selecionado
Funcionalidade: Adicionar produtos a lista de compra
    Como usuário do e-commerce Front - ServeRest
    Quero adicionar um produto a minha lista de compra
    Para personalizar as minhas compras

    Cenário: Adicionar produto a lista de compra
    Dado que esteja com home produtos aberta
    Quando clicar em adicionar a um dos produtos a lista
    Então deverá exibir "Lista de Compras" 