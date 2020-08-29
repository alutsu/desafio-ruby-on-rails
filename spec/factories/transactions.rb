FactoryBot.define do
  factory :transaction do
    trait :invalid_transaction_type do
      transaction_type { nil }
    end
    trait :invalid_date do
      date { nil }
    end
    trait :invalid_value do
      value { nil }
    end
    trait :invalid_cpf do
      cpf { nil }
    end
    trait :invalid_card_number do
      card_number { nil }
    end
    trait :invalid_time do
      time { nil }
    end
    trait :invalid_store do
      store { nil }
    end

    transaction_type factory: :transaction_type
    date { '2020-08-28' }
    value { 9.99 }
    cpf { 'MyString' }
    card_number { 'MyString' }
    time { '2020-08-28 17:55:42' }
    store factory: :store
  end
end
