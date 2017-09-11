require 'faker'

admin = User.create!(name: 'admin', username: 'admin', password: 'password', role: 1)
user = User.create!(name: 'Arshdeep', username: 'arsh', password: 'password')
puts "Seeded Users"

admin.save
user.save

10.times do
  Category.create!(title: Faker::Commerce.department)
end

puts "Seeded categories"

Category.all.each do |category|
  1.times do
    category.items.create!(
      title: Faker::Commerce.product_name,
      description: Faker::Hipster.paragraph,
      price: Faker::Commerce.price,
      image: Faker::LoremPixel.image("300x300", false, 'cats')
      )
  end
end

puts "Seeded Items"

3.times do
  user.addresses.create!(
    street_address: Faker::Address.street_address,
    street_address2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip_code: Faker::Address.zip
    )
end
puts "Seeded Addresses"

2.times do
  order = user.orders.create!(status: rand(0..3))

  10.times do
    item = Item.find(rand(1..Item.count))
    order.items.append(item)
  end
end

puts "Seeded Orders"
