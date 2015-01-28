# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :playlist do
    title "MyString"
    description "MyText"
    audio "MyString"
    image "MyString"
    published false
  end
end
