class Cadastro < SitePrism::Page
    set_url '/cadastrarusuarios'
    element :name_cadastro, '#nome'
    element :email_cadastro, '#email'
    element :password_cadastro, '#password'
    element :btn_cadastro, '#root > div > div > form > div:nth-child(7) > button'
    $cont = 0
end