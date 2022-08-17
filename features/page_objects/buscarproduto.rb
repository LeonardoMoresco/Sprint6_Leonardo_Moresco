class Produto < SitePrism::Page
    set_url '/'
    element :pesquisar_produtos, 'input[type="search"]'
    element :button_pesquisar, '#root > div > div > div.col-12 > div > div:nth-child(3) > button'
end
