FactoryGirl.define do
  factory :post do
    title     { Faker::Superhero.name }
    subtitle  { Faker::StarWars.quote }
    content   { Faker::Lorem.paragraphs(3) }
    image     { Faker::Avatar.image("my-own-slug", "50x50") }
  end
end
