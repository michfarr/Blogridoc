FactoryGirl.define do
  factory :comment do
    title { Faker::Name.title }
    comment { Faker::Hacker.say_something_smart }
    posts nil
  end
end
