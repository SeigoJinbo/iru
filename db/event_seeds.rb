require_relative './user_seeds'
require_relative './organization_seeds'

puts "creating plant a tree"
PLANT_A_TREE = Event.create!(
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
PLANT_A_TREE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')



puts "Read to kids"
READ_TO_KIDS = Event.create!(
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
READ_TO_KIDS.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')


puts "Give Money to Pandas"
PAY_A_PANDA = Event.create!(
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
PAY_A_PANDA.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Night cafe"
NIGHT_CAFE = Event.create!(
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
NIGHT_CAFE.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Harvest kitchen"
KITCHEN = Event.create!(
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
KITCHEN.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')

puts "Give Blankets to Pandas"
BLANKET_A_PANDA = Event.create!(
  title: "Give Blankets to Pandas",
  category: 'Donation',
  description: 'Pandas need blankets',
  address: "Sans Souci, Nakahara kaido, Tokyo, Ota, 145-8523, Japan",
  positions: rand(3..10),
  ongoing: true,
  dates: [0, 1, 2, 3, 4, 5, 6].sample(rand(1..7)).sort,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000),
  organization: ANIMAL,
  owner: YUPING,
  tag_list: "Animals/Wildlife",
  donation_tag_list: "Supplies",
  item: "Blankets",
  target: 10
  )
puts "attaching photo give blankets to pandas"
event_photo = URI.open('https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
BLANKET_A_PANDA.photo.attach(io: event_photo, filename: 'event.jpg', content_type: 'image/jpg')






#---------------SET ENROLLMENTS---------------
puts "creating enrollment"

Enrollment.create!(
  user: LIZ,
  event: READ_TO_KIDS,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: SEIGO,
  event: PLANT_A_TREE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )

Enrollment.create!(
  user: YUPING,
  event: PLANT_A_TREE,
  start_time: Time.now + rand(10000..100000),
  end_time: Time.now + rand(100000..1000000)
  )


puts "creating donations"

Donation.create!(
  user: LIZ,
  event: BLANKET_A_PANDA,
  amount: rand(1..3)
  )



