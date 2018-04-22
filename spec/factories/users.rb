FactoryBot.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password "MyString"
    profile_image_id 1
    remember_token "MyString"
  end
end
