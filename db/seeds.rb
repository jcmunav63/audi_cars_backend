require 'date'

# Destroy existing data
User.destroy_all
Car.destroy_all
City.destroy_all
State.destroy_all
Country.destroy_all
Reservation.destroy_all

# Three Users
user1 = User.create(email: 'leclerc@gmail.com', name: 'Charles Leclerc', password: 'me1234')
user2 = User.create(email: 'hamilton@gmail.com', name: 'Lewis Hamilton', password: 'me1234')
user3 = User.create(email: 'norris@gmail.com', name: 'Lando Norris', password: 'me1234')

# Three CARSfor User1
car1 = Car.create(model: 'A3', name: 'Audi A3 Sedan', user_id: user1.id,
  description: 'Luxury Sedan, A3 model. Sets the standard. With the Audi A3, you get the premium features and functionality of a full-size sedan—in a size built for your life. 7 available exterior colors and 3 available interior colors give you the opportunity to express your unique style.',
  category: 'Sedan', price: 35800, discount: 0, epa_fuel_economy: 32,
  body_colors: 'Manhattan Gray, Brilliant Black, Ibis White, Florett Silver, Glacier White, Mythos Black, Navarra Blue',
  power_hp: 201, torque_lb_ft: 221, engine_type: 'Inline 4-cylinder', acceleration_sec_to_60mph: 6.6,
  image_url: 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2024-A3Sedan/1920x1080_MY24-A3-Parked-Side-Profile_resize.jpg',
  thumbnail: '')

car2 = Car.create(model: 'S3', name: 'Audi S3 Sedan', user_id: user1.id,
  description: 'Luxury Sedan, S3 model. Audi S3 combines impressive performance and an assertive stance that encourages staring. 7 available exterior colors and optional Fine Nappa leather seats with diamond stitch. 7 speed S-tronic automatic transmission.',
  category: 'Sedan', price: 47400, discount: 0, epa_fuel_economy: 26,
  body_colors: 'Ibis White, Glacier White, Mythos Black, Navarra Blue, Python Yellow, Tango Red, Daytona Gray',
  power_hp: 306, torque_lb_ft: 295, engine_type: 'Inline 4-cylinder', acceleration_sec_to_60mph: 4.5,
  image_url: 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2023-A3Sedan/1920x1080_S3-SEDAN_custom-cam-cUzDjbuaDllHiSUwM8p0f.jpg',
  thumbnail: '')

car3 = Car.create(model: 'A4', name: 'Audi A4 Sedan', user_id: user1.id,
  description: 'Luxury Sedan, A4 model. Audi A4 embodies past inspiration and future technology raising the bar on what a sedan ought to be. Enjoy optimal driving temperatures in any weather with optional ventilated front seats. 7 speed S-tronic automatic transmission.',
  category: 'Sedan', price: 53000, discount: 0, epa_fuel_economy: 30,
  body_colors: 'Daytona Gray, Arkona White, Brilliant Black, District Green, Florett Silver, Glacier White, Mythos Black, Manhattan Gray, Navarra Blue, Chronos Gray, Progressive Red',
  power_hp: 261, torque_lb_ft: 273, engine_type: '2.0-liter, 4-cylinder', acceleration_sec_to_60mph: 5.2,
  image_url: 'https://www.audiusa.com/content/dam/nemo/us/models/A4/A4-sedan/MY24/1920x1080_2024_A4_Sedan_DSR_2837.jpg',
  thumbnail: '')

# Country - USA
country1 = Country.create(name: 'United States of America')

# Three states in USA
state1 = State.create(name: 'California', country_id: country1.id)
state2 = State.create(name: 'New York', country_id: country1.id)
state3 = State.create(name: 'Texas', country_id: country1.id)

# Some cities in California
city1 = City.create(name: 'Los Angeles', state_id: state1.id)
city2 = City.create(name: 'San Francisco', state_id: state1.id)
city3 = City.create(name: 'San Diego', state_id: state1.id)
city4 = City.create(name: 'Oakland', state_id: state1.id)
city5 = City.create(name: 'San Jose', state_id: state1.id)
city6 = City.create(name: 'Fresno', state_id: state1.id)
city7 = City.create(name: 'Sacramento', state_id: state1.id)

# Some cities in New York
city8 = City.create(name: 'New York City', state_id: state2.id)
city9 = City.create(name: 'Buffalo', state_id: state2.id)
city10 = City.create(name: 'Hempstead Town', state_id: state2.id)
city11 = City.create(name: 'Brookhaven', state_id: state2.id)
city12 = City.create(name: 'Syracuse', state_id: state2.id)
city13 = City.create(name: 'Rochester City', state_id: state2.id)

# Some cities in Texas
city14 = City.create(name: 'Dallas', state_id: state3.id)
city15 = City.create(name: 'Austin', state_id: state3.id)
city16 = City.create(name: 'Houston', state_id: state3.id)
city17 = City.create(name: 'San Antonio', state_id: state3.id)
city18 = City.create(name: 'Fort Worth', state_id: state3.id)
city19 = City.create(name: 'El Paso', state_id: state3.id)
city20 = City.create(name: 'Arlington', state_id: state3.id)

tomorrow = Date.today + 1
reservation_time = Time.zone.parse("10:00")

# Reservations
reservation1 = Reservation.create(user_id: user1.id, car_id: car1.id,  date_reserved: Date.today,
  reservation_date: tomorrow, reservation_time: reservation_time, model: 'A3', name: 'Audi A3 Sedan', city_id: city1.id)
