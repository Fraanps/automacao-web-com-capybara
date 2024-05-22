require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)
        product_title = find('.item-details h1')
        expect(product_title.text).to eql product [:name]

        sub_price = find('.subtotal .sub-price')
        expect(sub_price.text).to eql product[:price]

        delivery = find('.delivery-price')
        expect(delivery.text).to eql product[:delivery]
    end

    def assert_total_price(total_price)
        price = find('.total-price')
        expect(price.text).to eql total_price
    end

    def find_zipcode(zipcode)
        find('input[name=cep]').set(zipcode)
        # find('input[type=button]').click - clickar no botão de buscar cep
        click_on 'Buscar CEP'
    end

    def fill_address(address)
        find('input[name=number]').set(address[:number])
        find('input[name=complement]').set(address[:details])
    end

    def choice_payment(payment_type)
        find('label div', text: payment_type.upcase).click
    end

    def finalize_purchase()
        click_on 'Confirmar pedido'
    end

    def apply_discount(cupom)
        find('input[placeholder="Código do cupom"]').set(cupom)
        find('input[value=Aplicar]').click
    end

    def notification_cupom(notification)
        notice = find('.notice')
        expect(notice.text).to eql notification
    end




end
