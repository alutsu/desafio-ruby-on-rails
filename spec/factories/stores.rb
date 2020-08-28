FactoryBot.define do
  factory :store do
    trait :invalid_name_store do
      name { nil }
    end
    trait :invalid_owner_store do
      owner { nil }
    end
    name { 'Valid store name' }
    owner { 'Valid owner name' }
  end
end
