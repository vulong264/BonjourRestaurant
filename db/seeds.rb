# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Section.all.each do |section|
    for i in 0..5
        FoodItem.create name: Faker::Commerce.product_name,
        description: Faker::Lorem.paragraph,
        price: Faker::Commerce.price,
        image_url: "http://lorempixel.com/400/400/food/",
        section_id: section.id,
        created_at: Faker::Time.between(1.hour.ago, Time.now)
    end
end