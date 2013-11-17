# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lecture, :class => 'Lectures' do
    text ""
    email "MyString"
  end
end
