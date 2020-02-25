100.times do
  User.create(
     email: Faker::Internet.safe_email,
     password: Faker::Internet.password,
     name: Faker::FunnyName.name)
end

