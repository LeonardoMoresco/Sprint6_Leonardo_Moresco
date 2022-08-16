class Produto < SitePrism::Page
    set_url '/'
    element :pesquisar_produtos, 'input[type="search"]'
    element :button_pesquisar, :xpath, '//*[@id="root"]/div/div/div[1]/div/div[3]/button'
end
