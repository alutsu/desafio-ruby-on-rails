# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TransactionType.create(description: 'Débito', nature: 'Entrada', signal: '+')
TransactionType.create(description: 'Boleto', nature: 'Saída', signal: '-')
TransactionType.create(description: 'Financiamento', nature: 'Saída', signal: '-')
TransactionType.create(description: 'Crédito', nature: 'Entrada', signal: '+')
TransactionType.create(description: 'Recebimento Empréstimo', nature: 'Entrada', signal: '+')
TransactionType.create(description: 'Vendas', nature: 'Entrada', signal: '+')
TransactionType.create(description: 'Recebimento TED', nature: 'Entrada', signal: '+')
TransactionType.create(description: 'Recebimento DOC', nature: 'Entrada', signal: '+')
TransactionType.create(description: 'Aluguel', nature: 'Saída', signal: '-')
