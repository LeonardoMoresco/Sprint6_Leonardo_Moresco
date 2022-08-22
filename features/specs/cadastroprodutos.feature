#language: pt
@todos_os_testes
@cadastroproduto
Funcionalidade: Cadastro um novo produto
    Como usuário administrador
    Quero cadastrar novos produtos
    Para personalizar os produtos do e-commerce

    Contexto:
    Dado que esteja na tela de cadastro de produto
    E logado como administrador

    Esquema do Cenário: Validar o cadastro de um produto novo
    Quando o usuário administrador preencher os campos "<Nome:>", "<Preço:>", "<Descrição:>" e "<Quantidade:>"
    Então deverá exibir a '<msg:>'
    Exemplos:
    |Nome:                |Preço: |Descrição:         |Quantidade: |msg:                               | 
    |                     |500    |Acústica muito boa |10          |Nome não pode ficar em branco      |
    |Violão               |       |Acústica muito boa |10          |Preco é obrigatório                |
    |Violão               |500    |                   |10          |Descricao não pode ficar em branco |
    |Violão               |500    |Acústica muito boa |            |Quantidade é obrigatório           |
    |Violão               |500    |Acústica muito boa |10          |Lista dos Produtos                 |
    |Logitech MX Vertical |470    |Mouse              |382         |Já existe produto com esse nome    |
