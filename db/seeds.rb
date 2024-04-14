user1 = User.create!(email: 'aaa12@hotmail.com', password: 'passwor2d', password_confirmation: 'passwor2d')
user2 = User.create!(email: 'bbb22@gmail.com', password: 'password23', password_confirmation: 'password23')

cinema1 = Cinema.create!(name: 'Kinoplex 2', location: 'Copacabana')
cinema2 = Cinema.create!(name: 'Kniplex 3', location: 'Madureira')

show1 = Show.create!(movie_title: 'Titanic', cinema: cinema1)
show2 = Show.create!(movie_title: 'Saw', cinema: cinema2)

# seat_position1 = SeatReservation.create!(row: 1, number: 1, cinema: cinema1)
# seat_position2 = SeatReservation.create!(row: 1, number: 2, cinema: cinema1)
