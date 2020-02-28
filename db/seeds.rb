Booking.destroy_all
Item.destroy_all
User.destroy_all

10.times do
  user = User.create!(
     email: Faker::Internet.safe_email,
     password: Faker::Internet.password,
     name: Faker::FunnyName.name)
  10.times do
    Item.create!(
      user: user,
      title: %w[Guitar Bike Gameboy Sofa Bed Book].sample,
      description: Faker::Quote.famous_last_words,
    )
  end
end


