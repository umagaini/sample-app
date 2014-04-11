namespace :db do
desc "Fill database with sample data"
task populate: :environment do
admin = User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar")
admin.toggle!(:admin)
name = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "password"
User.create!(name: name,
             email: email,
             password: password,
             password_confirmation: password)
user = user.all(limit: 6)
50.times do
content = faker::lorem.sentence(5)
users.each { |user| user.microposts.create!(content) }
end
end
end
