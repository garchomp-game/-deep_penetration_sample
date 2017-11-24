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
  end
end
