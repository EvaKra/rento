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
      description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora reiciendis libero in iusto nisi omnis ipsam deleniti quod quas alias nostrum, enim tempore beatae incidunt minus. Dolores natus provident omnis?",
    )
  end
end


