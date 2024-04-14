user1 = User.create!(email: '1@hotmail.com', password: 'passwor2d', password_confirmation: 'passwor2d')
user2 = User.create!(email: '2@gmail.com', password: 'password23', password_confirmation: 'password23')

cinema1 = Cinema.create!(name: 'Kinoplex 2', location: 'Copacabana')
cinema2 = Cinema.create!(name: 'Kniplex 3', location: 'Madureira')

show1 = Show.create!(movie_title: 'Titanic', start_time: DateTime.now + 3.days, cinema: cinema1)
show2 = Show.create!(movie_title: 'Saw', start_time: DateTime.now + 10.days, cinema: cinema2)

seat_position1 = SeatReservation.create!(seat_position: 'D8', cinema: cinema1, show: show1, user: user1)
seat_position2 = SeatReservation.create!(seat_position: 'A2', cinema: cinema1, show: show1, user: user2)
