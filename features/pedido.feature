#language: pt

Funcionalidade: Pedidos

    Como um usuário do site starbugs, eu quero selecionar e comprar cafés
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

    Cenario: Compra bem sucedida
        Dado que estou na página principal da Starbugs
            E que iniciei a compra do item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP: "72876001"
            E informo os demais dados do endereço:
                | number      | 102     | 
                | details | Bloco H | 
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redirecionado para a página de confirmação de Pedidos 
            E deve ser informado o seguinte prazo de entrea:  "20 min - 30 min"