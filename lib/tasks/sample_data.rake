namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin=User.create!(
      name: "Example User",
      email: "otoka.japanesedrum@gmail.com",
      password: "matutani9613",
      admin: true
    )

    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(
        name: name,
        email: email,
        password: password
      )
    end
    users=User.limit(6)
    50.times do
      content=Faker::Lorem.sentence(5)
      users.each{|user| user.microposts.create!(content: content)}
    end
  end
end
