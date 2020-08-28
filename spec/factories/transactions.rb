FactoryBot.define do
  factory :transaction do
    transaction_type factory: :transaction_type
    date { '2020-08-28' }
    value { '9.99' }
    cpf { 'MyString' }
    card_number { 'MyString' }
    time { '2020-08-28 17:55:42' }
    store factory: :store
  end
end
