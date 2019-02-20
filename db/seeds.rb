# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '06 09 09 09 77',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '06 09 09 09 87',
    category:     'italian'
  },
  {
    name:         'Fer à cheval',
    address:      '5 rue des arbres',
    phone_number: '06 09 09 09 07',
    category:     'french'
  },
  {
    name:         'Mac Do',
    address:      '6 rue des arbres',
    phone_number: '06 09 09 09 87',
    category:     'belgian'
  },
  {
    name:         'Kong ei fat choi',
    address:      '7 rue des arbres',
    phone_number: '06 09 09 09 97',
    category:     'chinese'
  }
]
Restaurant.create!(restaurants_attributes)

puts 'Finished!'
puts 'Creating review...'
reviews_attributes = [
  {
    content:      'super',
    rating:       '5',
    restaurant_id:   "1"
  },
  {
    content:      'moyen',
    rating:       '3',
    restaurant_id:    "2"
  },
  {
    content:      'horrible',
    rating:       '0',
    restaurant_id:    "3"
  },
  {
    content:      'ok ok',
    rating:       '4',
    restaurant_id:    "3"
  },
  {
    content:      'cata',
    rating:       '1',
    restaurant_id:    "2"
  }
]
Review.create!(reviews_attributes)
puts 'Finished!'
