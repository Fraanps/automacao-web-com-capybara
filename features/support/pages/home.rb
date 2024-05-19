
# camada principal - page objects
# classe page object
class HomePage
    # informando que quero usar o capybara aqui
    include Capybara::DSL

    # propriedades ou funções que vão representar elementos ou funcionalidades da página

    def open
        visit 'https://starbugs.vercel.app/'
    end

    def coffe_list
        return all('.coffee-item')
    end

    def buy(coffee_name)
        product = find('.coffee-item', text: coffee_name)
        product.find('.buy-coffee ').click
    end


end