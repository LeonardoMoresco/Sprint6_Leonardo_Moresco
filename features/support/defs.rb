require 'faker'

class GenerateData < SitePrism::Page
    def generate_email
        Faker::Internet.email
    end 

    def generate_product
        Faker::Commerce.product_name
    end

end