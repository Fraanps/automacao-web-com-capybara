#language: pt

Funcionalidade: Catalogo de cafés
    Como um usuário do site starbugs, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Cenário: Acessar o catálogo de cafés na página principal
    Quando acesso a página principal da Starbugs
    Então devo ver uma lista de cafés disponíveis

@temp
Cenário: Iniciar a compra de um café 
    Dado que estou na página principal da Starbugs
        E que desejo comprar o seguinte produto
        | product         | price  | delivery|
        | Expresso Gelado | R$ 9,99| R$ 10,00 |
    Quando inicio a compra desse item
    Então devo ver a página de checkout com os detalhes do produto
        E o valor total da compra deve ser "R$ 19,99"

Cenário: Café indisponível
    Dado que estou na página principal da Starbugs
        E que desejo comprar um café "Expresso Cremoso"
    Quando inicio a compra desse item
    Então devo ver um popup informando que o produto está indisponível