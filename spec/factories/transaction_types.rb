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

    description { 'MyString' }
    nature { 'MyString' }
    signal { 'MyString' }
  end
end
