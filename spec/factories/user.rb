FactoryBot.define do
  factory :user do
    email        { Faker::Internet.unique.email }
    password     { '12345678' }
    username     { Faker::Internet.unique.user_name }
    first_name   { Faker::Name.first_name }
    last_name    { Faker::Name.last_name }
    uid          { Faker::Number.unique.number(10) }
    confirmed_at { DateTime.now }
  end
end
