FactoryGirl.define do
  factory :genre do
    type { Faker::Book.genre }
  end
end
