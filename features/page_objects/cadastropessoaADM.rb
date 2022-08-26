class Cadastropessoa < SitePrism::Page
    element :box_cadastro, '#root > div > div > p.row > div:nth-child(2) > div > div > a'
    element :nome, '#nome'
    element :email, '#email'
    element :senha, '#password'
    element :btn_cadastrar_pessoa, '#root > div > div > div > form > div:nth-child(7) > div > button'
end