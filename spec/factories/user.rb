FactoryBot.define do
  factory :user do
    trait :invalid_name do
      name { nil }
    end
    trait :invalid_email do
      email { nil }
    end
    trait :invalid_password do
      password { nil }
    end
    trait :invalid_admin do
      admin { nil }
    end
    name { 'Valid name' }
    email { 'valid@mail.com' }
    password { '123123' }
    admin { true }
    provider { 'provider' }
    uid { 'randonuid' }
  end
end
