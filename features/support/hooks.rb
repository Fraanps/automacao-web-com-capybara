# instanciando a classe page object

require_relative './pages/checkout.rb'
require_relative './pages/componets.rb'
require_relative './pages/home.rb'
require_relative './pages/order.rb'

Before do

    # instanciando a classe Home
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = Popup.new
end

# tirando print e salvando em cada teste e anexando no relatório
# dentro do if terá evidÊncias apenas para os cenários que der erro
After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.name}.png")
    attach(screenshot, "image/png", "Screenshot")

    #if(scenario.failed?)
    #    screenshot = page.save_screenshot("logs/screenshots/#{scenario.id}.png")
    #   attach(screenshot, "image/png", "Screenshot")
    #end

end