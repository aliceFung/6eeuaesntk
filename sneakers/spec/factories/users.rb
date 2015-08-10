# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:username){|n| "MyString#{n}"}
    # username "MyString"
    email "MyString"
    password "foobar"
    password_confirmation "foobar"

  end
end
