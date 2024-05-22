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