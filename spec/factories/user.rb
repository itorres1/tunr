FactoryGirl.define do 
  factory :user do 
    email { Faker::Internet.email }
    first_name "Jeff"
    last_name "K"
    dob Date.today
    balance 10.00
    password "jeff"
    password_confirmation "jeff"
  end
end