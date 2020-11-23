require_relative './user_seeds'
require_relative './organization_seeds'
puts "creating plant a tree"
plant_a_tree = Event.create!(
  title: "Plant a tree",
  category: 'Volunteer',
  description: 'plant a tree',
  positions: rand(3..10),
  address: "Koyamadai, Shinagawa Tokyo 142-0061",
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: WE_LOVE_TREES,
  owner: LIZ,
  tag_list: "Environment/Agriculture"
  )
puts "attaching photo to plant a tree"
event_photo = URI.open('https://www.eco.ca/wp-content/uploads/corporation-of-tomorrow.png')
plant_a_tree.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "Read to kids"
read_to_kids = Event.create!(
  title: "Read to kids",
  category: 'Volunteer',
  description: 'help children learn to read',
  address: "Hachimangu shrine, Salesian Dori, Meguro, Tokyo, 152-0003, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: ANIMAL,
  owner: YUPING,
  tag_list: "Education"

  )
puts "attaching photo to Read to kids"
event_photo = URI.open('https://images.pexels.com/photos/5088188/pexels-photo-5088188.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
read_to_kids.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Give Money to Pandas"
walk_a_panda = Event.create!(
  title: "Give Money to Pandas",
  category: 'Fundraiser',
  description: 'Pandas need money',
  address: "Setagaya, Tokyo, 152-0035, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: ANIMAL,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Animals/Wildlife"
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
walk_a_panda.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Night cafe"
night_cafe = Event.create!(
  title: "Night Cafe",
  category: 'Volunteer',
  description: 'Tsubomi Cafe is a free cafe for teens.
Based on the refurbished bus, it is held regularly in Shibuya and Shinjuku.',
  address: "Shibuya: 6-21 Jingumae, Shibuya-ku, Tokyo 6-22-8 Jingumae",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: COLABO,
  owner: LIZ,
  price_cents: 100,
  tag_list: "Women"
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('https://i2.wp.com/colabo-official.net/wp-content/uploads/2018/10/8574236942707-640x480.jpg')
night_cafe.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Harvest kitchen"
kitchen = Event.create!(
  title: "Harvest Kitchen",
  category: 'Volunteer',
  description: 'We distribute hot meals at Ueno Park each Saturday.',
  address: "1F Mizuta Bldg. 4-5-1 Asakusabashi
Taito-ku, Tokyo, Japan 111-0053",
  positions: rand(3..10),
  ongoing: false,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: HARVEST,
  owner: YUPING,
  price_cents: 100,
  tag_list: "Other"
  )
puts "attaching photo give money to pandas"
event_photo = URI.open('http://2hj.org/activity_/images/img_2hj_activity01.jpg')
kitchen.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


#---------------SET ENROLLMENTS---------------
puts "creating enrollment"

Enrollment.create!(
  user: LIZ,
  event: read_to_kids,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: SEIGO,
  event: plant_a_tree,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: YUPING,
  event: plant_a_tree,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )



