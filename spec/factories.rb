FactoryBot.define do
  factory :Auction do
    title {'Anything'}
    description { 'Lorem ipsum'}
    start_date { DateTime.now}
    end_date { DateTime.now + 1.week}
    user_id {1}
  end
end

FactoryBot.define do
  factory :User do
    password {'password'}
    email {'juan@correo.com'}
  end
end