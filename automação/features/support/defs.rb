require 'faker'

class GenerateData < SitePrism::Page
    def generate_email
        Faker::Internet.email
    end 
end
