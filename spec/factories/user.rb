FactoryBot.define do
  factory :user do
    name { 'Valid name' }
    email { 'valid@mail.com' }
    password { '123123' }
    admin { true }
  end
end
