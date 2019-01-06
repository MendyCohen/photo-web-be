# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 Photographer.destroy_all
 Category.destroy_all
Picture.destroy_all


20.times {
  Photographer.create(name: Faker::Artist.name, camera: Faker::Device.model_name)
}

50.times {
  Category.create(name: Faker::Cannabis.category)
}

30.times {
  Picture.create(category: Category.all.sample, photographer: Photographer.all.sample, image: Faker::Avatar.image, title: Faker::GameOfThrones.character)
}
