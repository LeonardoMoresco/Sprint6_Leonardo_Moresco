class CadastroProduto < SitePrism::Page
    set_url '/admin/cadastrarprodutos'
    element :name, '#nome'
    element :preco, '#price'
    element :descricao, '#description'
    element :quantidade, '#quantity'
    element :btn_cadastrar, '#root > div > div > div > form > div:nth-child(8) > div > button'
    element :btn_produto, '#root > div > div > p.row > div:nth-child(4) > div > div > a'
end