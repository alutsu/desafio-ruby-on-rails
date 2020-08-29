# Desafio programação - para vaga desenvolvedor Ruby on Rails

# Descrição do projeto

Você recebeu um arquivo CNAB com os dados das movimentações finanaceira de várias lojas.
Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload do [arquivo CNAB](https://github.com/ByCodersTec/desafio-ruby-on-rails/blob/master/CNAB.txt), normalize os dados e armazene-os em um banco de dados relacional e exiba essas informações em tela.

# Features
* Acesso com login e senha
* Acesso com login do github
* Home Page para upload do arquivo
* Lista das transações importadas através do CNAB

# Bibliotecas utilizadas
* Ruby 2.7.1
* Rails 6.0.3.2
* Postgres 12.2
* Docker 19.03.12
* Docker Compose 1.26.2

# Principais Gems utilizadas
* devise
* omniauth-github
* pg
* rspec-rails
* rails-controller-testing
* factory_bot_rails
* simplecov
* ransack
* kaminari

# Outras bibliotecas
* eslint
* git-commit-msg-linter
* husky
* lint-staged

# Para executar o projeto em localhost
* Requerimentos básicos:
  - Deverá ter instalado o Docker e Docker Compose

* Clone o projeto com:
> git clone https://github.com/alutsu/desafio-ruby-on-rails

* Entre na pasta do projeto:
> cd desafio-ruby-on-rails

* Realize o build do projeto
> docker-compose build

* Instale as dependencias do yarn
> docker-compose run --rm app yarn install --check-files

* Instale as dependencias do rails
> docker-compose run --rm app bundle install

* Crie o banco de dados e execute as migrações
> docker-compose run --rm app bundle exec rails db:create db:migrate

* Alimente o banco de dados com dados básicos dos seeds
> docker-compose run --rm app bundle exec rails db:seed

* Para rodar os testes, execute:
> docker-compose run --rm app bundle exec rspec

* Abra o arquivo dentro da cobertura dos testes no seu browser
> app/coverage/index.html

* Execute o projeto
> docker-compose up

* Abra o projeto no browser:
> http://localhost:3000

* URL do projeto em produção
> https://bycoders-challenge.herokuapp.com/