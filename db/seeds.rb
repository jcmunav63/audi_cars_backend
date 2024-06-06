require 'date'

# Seeds file to create initial data for the database tables

user1 = User.create(email: 'leclerc@gmail.com', name: 'Charles Leclerc', password: 'me1234')
user2 = User.create(email: 'hamilton@gmail.com', name: 'Lewis Hamilton', password: 'me1234')
user3 = User.create(email: 'norrise@gmail.com', name: 'Lando Norris', password: 'me1234')

car1 = Car.create(model: 'A3', name: 'Audi A3 Sedan',
  description: 'Luxury Sedan, A3 model. Sets the standard. With the Audi A3, you get the premium features and functionality of a full-size sedan—in a size built for your life. 7 available exterior colors and 3 available interior colors give you the opportunity to express your unique style.',
  category: 'Sedan', price: 35800, discount: 0, epa_fuel_economy: 32,
  body_colors: 'Manhattan Gray, Brilliant Black, Ibis White, Florett Silver, Glacier White, Mythos Black, Navarra Blue',
  power_hp: 201, torque_lb_ft: 221, engine_type: 'Inline 4-cylinder', acceleration_sec_to_60mph: 6.6, user_id: user1.id,
  image_url: 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2024-A3Sedan/1920x1080_MY24-A3-Parked-Side-Profile_resize.jpg',
  thumbnail: null)

car2 = Car.create(model: 'S3', name: 'Audi S3 Sedan',
  description: 'Luxury Sedan, S3 model. Audi S3 combines impressive performance and an assertive stance that encourages staring. 7 available exterior colors and optional Fine Nappa leather seats with diamond stitch. 7 speed S-tronic automatic transmission.',
  category: 'Sedan', price: 47400, discount: 0, epa_fuel_economy: 26,
  body_colors: 'Ibis White, Glacier White, Mythos Black, Navarra Blue, Python Yellow, Tango Red, Daytona Gray',
  power_hp: 306, torque_lb_ft: 295, engine_type: 'Inline 4-cylinder', acceleration_sec_to_60mph: 4.5, user_id: user1.id,
  image_url: 'https://www.audiusa.com/content/dam/nemo/us/models/A3/2023-A3Sedan/1920x1080_S3-SEDAN_custom-cam-cUzDjbuaDllHiSUwM8p0f.jpg',
  thumbnail: null)

car3 = Car.create(model: 'A4', name: 'Audi A4 Sedan',
  description: 'Luxury Sedan, A4 model. Audi A4 embodies past inspiration and future technology raising the bar on what a sedan ought to be. Enjoy optimal driving temperatures in any weather with optional ventilated front seats. 7 speed S-tronic automatic transmission.',
  category: 'Sedan', price: 53000, discount: 0, epa_fuel_economy: 30,
  body_colors: 'Daytona Gray, Arkona White, Brilliant Black, District Green, Florett Silver, Glacier White, Mythos Black, Manhattan Gray, Navarra Blue, Chronos Gray, Progressive Red',
  power_hp: 261, torque_lb_ft: 273, engine_type: '2.0-liter, 4-cylinder', acceleration_sec_to_60mph: 5.2, user_id: user1.id,
  image_url: 'https://www.audiusa.com/content/dam/nemo/us/models/A4/A4-sedan/MY24/1920x1080_2024_A4_Sedan_DSR_2837.jpg',
  thumbnail: null)
