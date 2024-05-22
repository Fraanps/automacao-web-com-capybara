Dado('que iniciei a compra do item:') do |table|
    product = table.rows_hash
    @home.open
    @home.buy(product[:name]) 
end
  
Quando('aplico o seguinte cupom: {string}') do |cupom|
    @checkout.apply_discount(cupom)
    
end
  
Então('o valor final da compra deve ser atualizado para {string}') do |total_price|
    @checkout.assert_total_price(total_price)
end

Então('devo ver a notificação {string}') do |notification|
    @checkout.notification_cupom(notification)
end
  
  Então('o valor final da compra deve permanecer o mesmo {string}') do |total_price|
    @checkout.assert_total_price(total_price)
  end
  