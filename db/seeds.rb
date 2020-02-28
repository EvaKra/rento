Booking.destroy_all
Item.destroy_all
User.destroy_all
items = ["Guitar", "Bike", "Sofa"]

descriptions = ["This guitar is awesome it is as if it was new", "This bike is in such good condition, it runs so smoothly you are gonna wish you could keep it", "This sofa is ridiculously comfortable, I usually sleep on it right after work"]

photos = [["../app/assets/images/mapbox.png", "../app/assets/images/mapbox.png", "../app/assets/images/mapbox.png"], ["../..", "../..", "../.."], ["../..", "../..", "../.." ]]

1.times do
  i = 0
  user = User.create!(
     email: Faker::Internet.safe_email,
     password: Faker::Internet.password,
     name: Faker::FunnyName.name)
  1.times do
    item = Item.create!(
      user: user,
      title: items[i],
      description: descriptions[i]
    )
    
    item.photos.attach(io: file, filename: "mapbox.png", content_type: "image/png")
    i = i + 1
  end
end