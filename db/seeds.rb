# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
    name: "Seth W",
    country: "USA",
    age: 31,
    )
Genre.create(
      name: "True Crime",
      user_id: 1,
      photo_url: "https://miro.medium.com/max/1880/1*SVUOSDvBriNryyrOXpHttA.png",
    )
Genre.create(
    name: "History",
    user_id: 1,
    photo_url: "https://www.mypressplus.com/wp-content/uploads/2018/02/history.jpg",
    )
Genre.create(
    name: "Economics & Finance",
    user_id: 1,
    photo_url: "https://www.thegreatcourses.com/media/catalog/product/cache/1/plus_image/800x451/0f396e8a55728e79b48334e699243c07/5/5/550.1551362487.jpg" ,
    )
#     Podcast.create(
#       appointment_date: Faker::Date.in_date_period,
#       doctor_id: doctor.id,
#       genre_id: patient.id,
#     )

puts "Data Seeded."