FactoryBot.define do
  factory :transaction_type do
    trait :invalid_description do
      description { nil }
    end
    trait :invalid_nature do
      nature { nil }
    end
    trait :invalid_signal do
      signal { nil }
    end
    trait :positive do
      signal { '+' }
    end
    trait :negative do
      signal { '-' }
    end

    description { 'MyString' }
    nature { 'MyString' }
    signal { '+' }
  end
end
