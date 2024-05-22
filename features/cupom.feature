#language:pt

Funcionalidade: Uso de Cupons no Checkout
    Como um usuário do Starbugs, eu quero pode  aplicar cupons de desconto na página de checkout
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    # cenário para fim de documentação

    
    Cenario: Aplicar desconto de 20%

        Dado que iniciei a compra do item:
            | name      | Café com Leite |
            | price     | RS 19,99       |
            | delivery  | R$ 10,00       |
            | total     | R$ 29,99       |
        Quando aplico o seguinte cupom: "MEUCAFE"
        Então o valor final da compra deve ser atualizado para "R$ 25,99"


    Cenario: Cupom expirado

        Dado que iniciei a compra do item:
            | name      | Café com Leite |
            | price     | RS 19,99       |
            | delivery  | R$ 10,00       |
            | total     | R$ 29,99       |
        Quando aplico o seguinte cupom: "PROMO20"
        Então devo ver a notificação "Cupom expirado!"
            E o valor final da compra deve permanecer o mesmo "R$ 29,99"

    Cenario: Cupom inválido

    Dado que iniciei a compra do item:
            | name      | Café com Leite |
            | price     | RS 19,99       |
            | delivery  | R$ 10,00       |
            | total     | R$ 29,99       |
        Quando aplico o seguinte cupom: "PROMO100"
        Então devo ver a notificação "Cupom inválido!"
            E o valor final da compra deve permanecer o mesmo "R$ 29,99"




