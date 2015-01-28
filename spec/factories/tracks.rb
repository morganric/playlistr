# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    song "MyString"
    artist "MyString"
    audio "MyString"
    playlist_id 1
  end
end
