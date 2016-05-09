FactoryGirl.define do
  factory :comment do
    title { Faker::Name.title }
    user_comment { Faker::Hacker.say_something_smart }
    post
  end
end
