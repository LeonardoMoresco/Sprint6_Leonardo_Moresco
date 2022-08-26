class Login < SitePrism::Page
    set_url '/'
    element :email, '#email'
    element :password, '#password'
    element :submit, 'button[type="submit"]'
end


    
