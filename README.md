### Sobre
Repositório do projeto de testes automatizados do sistema starbugs, feito no curso Cucumber eXperience!

### Tecnologias
* Capybara
* Cucumber
* RSpec
* Ruby
* Selenium Webdriver


### Como executar
1. Clonar o repositório
```
bundle install
```
2. Executar testes de regressão
```
bundle exec cucumber
```
3. Executar teste de fumaça na funcionalidade principal
    * no arquivo pedido.feature assinalar o cenário de **compra bem sucedida** com a tag @smoke e executar o seguinte comando:

```
bundle exec cucumber -t @smoke
```

### Diferentes tipos de saída dos resultados dos testes
1. Em formato XML (logs - é o nome da pasta onde quer salvar o arquivo, pode renomea-la)
```
bundle exec cucumber -f junit -o logs
```  
2. Os steps são representados por pontos
```
bundle exec cucumber -f progress
```
3. Em formato JSON (logs/report.json - é o local onde fica salvo o relatório, pode renomea-lo)
```
bundle exec cucumber -f json -o logs/report.json
```  
4. Em formato HTML (o mais usado) (logs/report.html - é o local onde fica salvo o relatório, pode renomea-lo)
```
bundle exec cucumber -f pretty -f html -o logs/report.html 
``` 
