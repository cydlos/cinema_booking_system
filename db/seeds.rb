user1 = User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'user2@example.com', password: 'password2', password_confirmation: 'password2')

cinema1 = Cinema.create!(name: 'Kinoplex', location: 'Downtown')
cinema2 = Cinema.create!(name: 'Severiano Ribeiro', location: 'Uptown')

show1 = Show.create!(movie_title: 'The Appartment', start_time: DateTime.now + 5.days, cinema: cinema1)
show2 = Show.create!(movie_title: 'Saw 1', start_time: DateTime.now + 3.days, cinema: cinema2)
