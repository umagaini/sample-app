FactoryGirl.define do
factory :user do
sequence(:name) { |n| "person #{n}" }
sequence(:email) { |n| "person_#{n}@example.com"}
passwor "foobar"
password_confirmation "foobar"
factory :admin do
admin true
end
end factory :micropost do
content "lorem ipsum"
user
end
end
