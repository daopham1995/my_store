FactoryGirl.define do
  factory :employee do
    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "user#{n}@example.tld" }
    password 'test password'
  end
end
