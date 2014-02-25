FactoryGirl.define do 
  factory :song do 
    title "Tick tock"
    price 1.99
    association :artist
  end
end